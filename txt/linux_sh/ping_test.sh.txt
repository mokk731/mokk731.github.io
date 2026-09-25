#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


# ==============================

# chmod +x ping_test.sh
# ./ping_test.sh


# crontab -e
# 0 6 * * * /bin/bash /home/yourname/ping_test.sh

# 输出文件路径要写绝对路径
# TXTFILE="/home/yourname/ping${DATE_STR}.txt"
# TXTFILE="/home/public/hermes-tmp/ping_test/ping${DATE_STR}.txt"


# ==============================


# ===== 配置 =====
IPS=("104.26.4.173" "104.26.4.198" "162.159.152.218")
PING_SECONDS=60
DATE_STR=$(date +%Y%m%d)
TXTFILE="ping${DATE_STR}.txt"

# ===== 初始化文件 =====
{
    echo "============================================"
    echo "Ping 测试报告"
    echo "测试开始时间: $(date '+%Y-%m-%d %H:%M:%S')"
    echo "IP 列表: ${IPS[*]}"
    echo "每个 IP 持续: ${PING_SECONDS} 秒"
    echo "============================================"
    echo ""
} > "$TXTFILE"

echo "输出文件: $TXTFILE"
echo ""

# ===== 逐个 Ping =====
for IP in "${IPS[@]}"; do
    echo "=============================="
    echo "正在 Ping $IP ，持续 ${PING_SECONDS} 秒..."
    echo "=============================="

    # 启动 ping，输出写入临时文件
    ping "$IP" > "temp_ping.txt" 2>&1 &
    PING_PID=$!

    # 等待 60 秒
    sleep "$PING_SECONDS"

    # 结束 ping 进程（发送 SIGINT，让它输出统计信息）
    kill -INT "$PING_PID" 2>/dev/null
    wait "$PING_PID" 2>/dev/null

    # 稍等一下确保文件写完
    sleep 1

    # 写入 IP 和结束时间
    {
        echo "[IP] $IP"
        echo "测试结束时间: $(date '+%Y-%m-%d %H:%M:%S')"
    } >> "$TXTFILE"

    # 提取统计信息（丢失、平均），兼容中英文
    grep -E "packet loss|丢失|avg|平均|rtt|round-trip" "temp_ping.txt" >> "$TXTFILE"

    {
        echo "--------------------------------------------"
        echo ""
    } >> "$TXTFILE"

    # 删除临时文件
    rm -f "temp_ping.txt"
done

# ===== 结束 =====
{
    echo "============================================"
    echo "全部测试完成: $(date '+%Y-%m-%d %H:%M:%S')"
} >> "$TXTFILE"

echo ""
echo "全部完成，结果已写入: $TXTFILE"
