#!/system/bin/sh

fqcaudio=`getprop debug.sys.fqcaudio`
soundcard=`cat /proc/asound/cards| cut -d " " -f 6`
case "$fqcaudio" in
	"11")
		#Do mic1 to headset
		tinymix 'LOOPBACK Mode' 'ENABLE' > /dev/null 2>&1		
		tinymix 'DEC1 MUX' 'ADC1' > /dev/null 2>&1
		tinymix 'ADC1_INP1 Switch' 1 > /dev/null 2>&1
		tinymix 'IIR1 INP1 MUX' 'DEC1' > /dev/null 2>&1
		tinymix 'RX1 MIX1 INP1' 'IIR1' > /dev/null 2>&1
		tinymix 'RX2 MIX1 INP1' 'IIR1' > /dev/null 2>&1
		tinymix 'RDAC2 MUX' 'RX2' > /dev/null 2>&1
		tinymix 'HPHL' 'Switch' > /dev/null 2>&1
		tinymix 'HPHR' 'Switch' > /dev/null 2>&1
		tinymix 'DEC1 Volume' 84 > /dev/null 2>&1
		tinymix 'Loopback MCLK' 'ENABLE' > /dev/null 2>&1
		tinymix 'RX1 Digital Volume' 84 > /dev/null 2>&1
		tinymix 'RX2 Digital Volume' 84 > /dev/null 2>&1
		;;
	"10")
		#stop mic1 to headset
		tinymix 'DEC1 MUX' 'ZERO' > /dev/null 2>&1
		tinymix 'ADC1_INP1 Switch' 0 > /dev/null 2>&1
		tinymix 'IIR1 INP1 MUX' 'ZERO' > /dev/null 2>&1
		tinymix 'RX1 MIX1 INP1' 'ZERO' > /dev/null 2>&1
		tinymix 'RX2 MIX1 INP1' 'ZERO' > /dev/null 2>&1
		tinymix 'RDAC2 MUX' 'ZERO' > /dev/null 2>&1
		tinymix 'HPHL' 'ZERO' > /dev/null 2>&1
		tinymix 'HPHR' 'ZERO' > /dev/null 2>&1
		tinymix 'Loopback MCLK' 'DISABLE' > /dev/null 2>&1
		tinymix 'LOOPBACK Mode' 'DISABLE' > /dev/null 2>&1
		;;
	"21")
		#Do mic2 to headset
		tinymix 'LOOPBACK Mode' 'ENABLE' > /dev/null 2>&1
		tinymix 'DEC1 MUX' 'ADC2' > /dev/null 2>&1
		tinymix 'ADC2 MUX' 'INP3' > /dev/null 2>&1
		tinymix 'IIR1 INP1 MUX' 'DEC1' > /dev/null 2>&1
		tinymix 'RX1 MIX1 INP1' 'IIR1' > /dev/null 2>&1
		tinymix 'RX2 MIX1 INP1' 'IIR1' > /dev/null 2>&1
		tinymix 'RDAC2 MUX' 'RX2' > /dev/null 2>&1
		tinymix 'HPHL' 'Switch' > /dev/null 2>&1
		tinymix 'HPHR' 'Switch' > /dev/null 2>&1
		tinymix 'DEC1 Volume' 84 > /dev/null 2>&1
		tinymix 'Loopback MCLK' 'ENABLE' > /dev/null 2>&1
		tinymix 'RX1 Digital Volume' 84 > /dev/null 2>&1
		tinymix 'RX2 Digital Volume' 84 > /dev/null 2>&1
		;;
	"20")
		#stop mic2 to headset
		tinymix 'DEC1 MUX' 'ZERO' > /dev/null 2>&1
		tinymix 'ADC2 MUX' 'ZERO' > /dev/null 2>&1
		tinymix 'IIR1 INP1 MUX' 'ZERO' > /dev/null 2>&1
		tinymix 'RX1 MIX1 INP1' 'ZERO' > /dev/null 2>&1
		tinymix 'RX2 MIX1 INP1' 'ZERO' > /dev/null 2>&1
		tinymix 'RDAC2 MUX' 'ZERO' > /dev/null 2>&1
		tinymix 'HPHL' 'ZERO' > /dev/null 2>&1
		tinymix 'HPHR' 'ZERO' > /dev/null 2>&1
		tinymix 'Loopback MCLK' 'DISABLE' > /dev/null 2>&1
		tinymix 'LOOPBACK Mode' 'DISABLE' > /dev/null 2>&1
		;;
	"31")
		#Do headset mic to headset
		tinymix 'LOOPBACK Mode' 'ENABLE' > /dev/null 2>&1
		tinymix 'DEC1 MUX' 'ADC2' > /dev/null 2>&1
		tinymix 'ADC2 MUX' 'INP2' > /dev/null 2>&1
		tinymix 'IIR1 INP1 MUX' 'DEC1' > /dev/null 2>&1
		tinymix 'RX1 MIX1 INP1' 'IIR1'  > /dev/null 2>&1
		tinymix 'RX2 MIX1 INP1' 'IIR1'  > /dev/null 2>&1
		tinymix 'RDAC2 MUX' 'RX2'  > /dev/null 2>&1
		tinymix 'HPHL' 'Switch'  > /dev/null 2>&1
		tinymix 'HPHR' 'Switch' > /dev/null 2>&1
		tinymix 'Loopback MCLK' 'ENABLE' > /dev/null 2>&1
		;;
	"30")
		#stop headset mic to headset
		tinymix 'DEC1 MUX' 'ZERO'  > /dev/null 2>&1
 		tinymix 'ADC2 MUX' 'ZERO'  > /dev/null 2>&1
		tinymix 'IIR1 INP1 MUX' 'ZERO'  > /dev/null 2>&1
		tinymix 'RX1 MIX1 INP1' 'ZERO'  > /dev/null 2>&1
		tinymix 'RX2 MIX1 INP1' 'ZERO'  > /dev/null 2>&1
		tinymix 'RDAC2 MUX' 'ZERO'  > /dev/null 2>&1
		tinymix 'HPHL' 'ZERO'  > /dev/null 2>&1
		tinymix 'HPHR' 'ZERO'  > /dev/null 2>&1
		tinymix 'Loopback MCLK' 'DISABLE' > /dev/null 2>&1
		tinymix 'LOOPBACK Mode' 'DISABLE' > /dev/null 2>&1
		;;
	*)
		;; #Do nothing
esac
