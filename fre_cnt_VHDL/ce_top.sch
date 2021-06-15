<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clockin" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_6(2:0)" />
        <signal name="XLXN_7" />
        <signal name="gate" />
        <signal name="reset" />
        <signal name="csignal" />
        <signal name="XLXN_13" />
        <signal name="low(3:0)" />
        <signal name="XLXN_16(3:0)" />
        <signal name="XLXN_17(3:0)" />
        <signal name="XLXN_22(3:0)" />
        <signal name="XLXN_23(3:0)" />
        <signal name="XLXN_24(3:0)" />
        <signal name="XLXN_25(3:0)" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_27(3:0)" />
        <signal name="dpout" />
        <signal name="seg(5:0)" />
        <signal name="dig(6:0)" />
        <signal name="qout" />
        <signal name="lch" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49(3:0)" />
        <signal name="XLXN_50(3:0)" />
        <signal name="high(3:0)" />
        <signal name="XLXN_51" />
        <port polarity="Input" name="clockin" />
        <port polarity="Output" name="gate" />
        <port polarity="Output" name="reset" />
        <port polarity="Input" name="csignal" />
        <port polarity="Output" name="low(3:0)" />
        <port polarity="Output" name="dpout" />
        <port polarity="Output" name="seg(5:0)" />
        <port polarity="Output" name="dig(6:0)" />
        <port polarity="Output" name="qout" />
        <port polarity="Output" name="lch" />
        <port polarity="Output" name="high(3:0)" />
        <blockdef name="multi">
            <timestamp>2019-10-27T14:34:37</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-576" height="640" />
        </blockdef>
        <blockdef name="fdiv3">
            <timestamp>2019-10-27T12:45:27</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-192" height="384" />
        </blockdef>
        <blockdef name="control">
            <timestamp>2019-10-27T12:47:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="counter6">
            <timestamp>2019-10-27T15:54:32</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-448" height="512" />
        </blockdef>
        <blockdef name="latch">
            <timestamp>2019-10-27T12:46:25</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sele">
            <timestamp>2019-10-27T14:37:57</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <block symbolname="fdiv3" name="XLXI_2">
            <blockpin signalname="clockin" name="Clockin" />
            <blockpin signalname="XLXN_2" name="ClockOut1k" />
            <blockpin signalname="XLXN_4" name="ClockOut100" />
            <blockpin signalname="XLXN_3" name="ClockOut10" />
        </block>
        <block symbolname="control" name="XLXI_4">
            <blockpin signalname="XLXN_7" name="inputsignal" />
            <blockpin signalname="gate" name="gate" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="lch" name="latch" />
        </block>
        <block symbolname="counter6" name="XLXI_5">
            <blockpin signalname="csignal" name="csignal" />
            <blockpin signalname="reset" name="clear" />
            <blockpin signalname="gate" name="count_en" />
            <blockpin signalname="XLXN_13" name="over" />
            <blockpin signalname="low(3:0)" name="result1(3:0)" />
            <blockpin signalname="high(3:0)" name="result2(3:0)" />
            <blockpin signalname="XLXN_16(3:0)" name="result3(3:0)" />
            <blockpin signalname="XLXN_17(3:0)" name="result4(3:0)" />
            <blockpin signalname="XLXN_49(3:0)" name="result5(3:0)" />
            <blockpin signalname="XLXN_50(3:0)" name="result6(3:0)" />
            <blockpin signalname="clockin" name="clockin" />
        </block>
        <block symbolname="multi" name="XLXI_6">
            <blockpin signalname="XLXN_2" name="f1k" />
            <blockpin signalname="XLXN_48" name="qover" />
            <blockpin signalname="XLXN_6(2:0)" name="dpin(2:0)" />
            <blockpin signalname="XLXN_22(3:0)" name="value1(3:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="value2(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="value3(3:0)" />
            <blockpin signalname="XLXN_25(3:0)" name="value4(3:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="value5(3:0)" />
            <blockpin signalname="XLXN_27(3:0)" name="value6(3:0)" />
            <blockpin signalname="qout" name="qout" />
            <blockpin signalname="dpout" name="dpout" />
            <blockpin signalname="seg(5:0)" name="seg(5:0)" />
            <blockpin signalname="dig(6:0)" name="dig(6:0)" />
        </block>
        <block symbolname="latch" name="XLXI_7">
            <blockpin signalname="lch" name="latch_in" />
            <blockpin signalname="XLXN_13" name="overin" />
            <blockpin signalname="low(3:0)" name="num1(3:0)" />
            <blockpin signalname="high(3:0)" name="num2(3:0)" />
            <blockpin signalname="XLXN_16(3:0)" name="num3(3:0)" />
            <blockpin signalname="XLXN_17(3:0)" name="num4(3:0)" />
            <blockpin signalname="XLXN_49(3:0)" name="num5(3:0)" />
            <blockpin signalname="XLXN_50(3:0)" name="num6(3:0)" />
            <blockpin signalname="XLXN_48" name="overout" />
            <blockpin signalname="XLXN_22(3:0)" name="num_out1(3:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="num_out2(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="num_out3(3:0)" />
            <blockpin signalname="XLXN_25(3:0)" name="num_out4(3:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="num_out5(3:0)" />
            <blockpin signalname="XLXN_27(3:0)" name="num_out6(3:0)" />
        </block>
        <block symbolname="sele" name="XLXI_9">
            <blockpin signalname="XLXN_2" name="f1k" />
            <blockpin signalname="XLXN_4" name="f100" />
            <blockpin signalname="XLXN_3" name="f10" />
            <blockpin signalname="XLXN_7" name="fref" />
            <blockpin signalname="XLXN_6(2:0)" name="dp(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="432" y="272" name="XLXI_2" orien="R0">
        </instance>
        <instance x="352" y="1200" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clockin">
            <wire x2="288" y1="112" y2="112" x1="240" />
            <wire x2="432" y1="112" y2="112" x1="288" />
            <wire x2="288" y1="112" y2="1232" x1="288" />
            <wire x2="352" y1="1232" y2="1232" x1="288" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="880" y1="304" y2="304" x1="816" />
            <wire x2="960" y1="304" y2="304" x1="880" />
            <wire x2="880" y1="32" y2="304" x1="880" />
            <wire x2="1600" y1="32" y2="32" x1="880" />
            <wire x2="1600" y1="32" y2="720" x1="1600" />
            <wire x2="1904" y1="720" y2="720" x1="1600" />
            <wire x2="960" y1="192" y2="304" x1="960" />
            <wire x2="1120" y1="192" y2="192" x1="960" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="832" y1="432" y2="432" x1="816" />
            <wire x2="944" y1="432" y2="432" x1="832" />
            <wire x2="944" y1="128" y2="432" x1="944" />
            <wire x2="1120" y1="128" y2="128" x1="944" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="832" y1="368" y2="368" x1="816" />
            <wire x2="960" y1="368" y2="368" x1="832" />
            <wire x2="960" y1="368" y2="384" x1="960" />
            <wire x2="1120" y1="384" y2="384" x1="960" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1808" y1="128" y2="128" x1="1504" />
        </branch>
        <branch name="gate">
            <wire x2="352" y1="1168" y2="1168" x1="336" />
            <wire x2="336" y1="1168" y2="1408" x1="336" />
            <wire x2="2368" y1="1408" y2="1408" x1="336" />
            <wire x2="2368" y1="128" y2="128" x1="2192" />
            <wire x2="2368" y1="128" y2="1408" x1="2368" />
            <wire x2="2576" y1="128" y2="128" x1="2368" />
        </branch>
        <branch name="reset">
            <wire x2="336" y1="624" y2="976" x1="336" />
            <wire x2="352" y1="976" y2="976" x1="336" />
            <wire x2="2272" y1="624" y2="624" x1="336" />
            <wire x2="2272" y1="192" y2="192" x1="2192" />
            <wire x2="2272" y1="192" y2="624" x1="2272" />
            <wire x2="2576" y1="192" y2="192" x1="2272" />
        </branch>
        <branch name="csignal">
            <wire x2="352" y1="784" y2="784" x1="160" />
        </branch>
        <branch name="dpout">
            <wire x2="2464" y1="720" y2="720" x1="2288" />
            <wire x2="2480" y1="720" y2="720" x1="2464" />
        </branch>
        <branch name="seg(5:0)">
            <wire x2="2304" y1="976" y2="976" x1="2288" />
            <wire x2="2512" y1="976" y2="976" x1="2304" />
            <wire x2="2528" y1="976" y2="976" x1="2512" />
        </branch>
        <branch name="dig(6:0)">
            <wire x2="2480" y1="1232" y2="1232" x1="2288" />
            <wire x2="2496" y1="1232" y2="1232" x1="2480" />
        </branch>
        <branch name="qout">
            <wire x2="2480" y1="1296" y2="1296" x1="2288" />
            <wire x2="2496" y1="1296" y2="1296" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="160" y="784" name="csignal" orien="R180" />
        <iomarker fontsize="28" x="240" y="112" name="clockin" orien="R180" />
        <iomarker fontsize="28" x="2480" y="720" name="dpout" orien="R0" />
        <iomarker fontsize="28" x="2496" y="1232" name="dig(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2496" y="1296" name="qout" orien="R0" />
        <iomarker fontsize="28" x="2528" y="976" name="seg(5:0)" orien="R0" />
        <branch name="XLXN_22(3:0)">
            <wire x2="1392" y1="816" y2="816" x1="1376" />
            <wire x2="1632" y1="816" y2="816" x1="1392" />
            <wire x2="1632" y1="816" y2="912" x1="1632" />
            <wire x2="1888" y1="912" y2="912" x1="1632" />
            <wire x2="1904" y1="912" y2="912" x1="1888" />
        </branch>
        <branch name="XLXN_6(2:0)">
            <wire x2="1520" y1="320" y2="320" x1="1504" />
            <wire x2="1696" y1="320" y2="320" x1="1520" />
            <wire x2="1696" y1="320" y2="848" x1="1696" />
            <wire x2="1888" y1="848" y2="848" x1="1696" />
            <wire x2="1904" y1="848" y2="848" x1="1888" />
        </branch>
        <instance x="1904" y="1264" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_27(3:0)">
            <wire x2="1392" y1="1136" y2="1136" x1="1376" />
            <wire x2="1552" y1="1136" y2="1136" x1="1392" />
            <wire x2="1552" y1="1136" y2="1232" x1="1552" />
            <wire x2="1888" y1="1232" y2="1232" x1="1552" />
            <wire x2="1904" y1="1232" y2="1232" x1="1888" />
        </branch>
        <branch name="XLXN_26(3:0)">
            <wire x2="1392" y1="1072" y2="1072" x1="1376" />
            <wire x2="1568" y1="1072" y2="1072" x1="1392" />
            <wire x2="1568" y1="1072" y2="1168" x1="1568" />
            <wire x2="1888" y1="1168" y2="1168" x1="1568" />
            <wire x2="1904" y1="1168" y2="1168" x1="1888" />
        </branch>
        <branch name="XLXN_25(3:0)">
            <wire x2="1392" y1="1008" y2="1008" x1="1376" />
            <wire x2="1584" y1="1008" y2="1008" x1="1392" />
            <wire x2="1584" y1="1008" y2="1104" x1="1584" />
            <wire x2="1888" y1="1104" y2="1104" x1="1584" />
            <wire x2="1904" y1="1104" y2="1104" x1="1888" />
        </branch>
        <branch name="XLXN_24(3:0)">
            <wire x2="1392" y1="944" y2="944" x1="1376" />
            <wire x2="1600" y1="944" y2="944" x1="1392" />
            <wire x2="1600" y1="944" y2="1040" x1="1600" />
            <wire x2="1888" y1="1040" y2="1040" x1="1600" />
            <wire x2="1904" y1="1040" y2="1040" x1="1888" />
        </branch>
        <branch name="XLXN_23(3:0)">
            <wire x2="1392" y1="880" y2="880" x1="1376" />
            <wire x2="1616" y1="880" y2="880" x1="1392" />
            <wire x2="1616" y1="880" y2="976" x1="1616" />
            <wire x2="1888" y1="976" y2="976" x1="1616" />
            <wire x2="1904" y1="976" y2="976" x1="1888" />
        </branch>
        <branch name="XLXN_17(3:0)">
            <wire x2="752" y1="1040" y2="1040" x1="736" />
            <wire x2="864" y1="1040" y2="1040" x1="752" />
            <wire x2="864" y1="1040" y2="1072" x1="864" />
            <wire x2="992" y1="1072" y2="1072" x1="864" />
        </branch>
        <branch name="XLXN_16(3:0)">
            <wire x2="752" y1="976" y2="976" x1="736" />
            <wire x2="864" y1="976" y2="976" x1="752" />
            <wire x2="864" y1="976" y2="1008" x1="864" />
            <wire x2="992" y1="1008" y2="1008" x1="864" />
        </branch>
        <branch name="high(3:0)">
            <wire x2="752" y1="912" y2="912" x1="736" />
            <wire x2="864" y1="912" y2="912" x1="752" />
            <wire x2="864" y1="912" y2="944" x1="864" />
            <wire x2="912" y1="944" y2="944" x1="864" />
            <wire x2="992" y1="944" y2="944" x1="912" />
            <wire x2="912" y1="944" y2="1312" x1="912" />
        </branch>
        <branch name="low(3:0)">
            <wire x2="752" y1="848" y2="848" x1="736" />
            <wire x2="768" y1="848" y2="848" x1="752" />
            <wire x2="864" y1="848" y2="848" x1="768" />
            <wire x2="864" y1="848" y2="880" x1="864" />
            <wire x2="992" y1="880" y2="880" x1="864" />
            <wire x2="768" y1="848" y2="1312" x1="768" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="752" y1="784" y2="784" x1="736" />
            <wire x2="864" y1="784" y2="784" x1="752" />
            <wire x2="864" y1="784" y2="816" x1="864" />
            <wire x2="992" y1="816" y2="816" x1="864" />
        </branch>
        <instance x="992" y="1232" name="XLXI_7" orien="R0">
        </instance>
        <branch name="lch">
            <wire x2="976" y1="640" y2="752" x1="976" />
            <wire x2="992" y1="752" y2="752" x1="976" />
            <wire x2="2256" y1="640" y2="640" x1="976" />
            <wire x2="2256" y1="256" y2="256" x1="2192" />
            <wire x2="2256" y1="256" y2="640" x1="2256" />
            <wire x2="2576" y1="256" y2="256" x1="2256" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1648" y1="752" y2="752" x1="1376" />
            <wire x2="1648" y1="752" y2="1296" x1="1648" />
            <wire x2="1904" y1="1296" y2="1296" x1="1648" />
        </branch>
        <instance x="1120" y="352" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1808" y="288" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2576" y="192" name="reset" orien="R0" />
        <iomarker fontsize="28" x="2576" y="128" name="gate" orien="R0" />
        <iomarker fontsize="28" x="2576" y="256" name="lch" orien="R0" />
        <branch name="XLXN_49(3:0)">
            <wire x2="864" y1="1104" y2="1104" x1="736" />
            <wire x2="864" y1="1104" y2="1136" x1="864" />
            <wire x2="992" y1="1136" y2="1136" x1="864" />
        </branch>
        <branch name="XLXN_50(3:0)">
            <wire x2="864" y1="1168" y2="1168" x1="736" />
            <wire x2="864" y1="1168" y2="1200" x1="864" />
            <wire x2="992" y1="1200" y2="1200" x1="864" />
        </branch>
        <iomarker fontsize="28" x="768" y="1312" name="low(3:0)" orien="R90" />
        <iomarker fontsize="28" x="912" y="1312" name="high(3:0)" orien="R90" />
    </sheet>
</drawing>