#!/bin/bash
#export QT_QPA_PLATFORM=offscreen
export DISPLAY=:0 # This is only for remote execution
declare -A PyConfig; declare -A Ns3Config

function checkNoneEmpty(){
  if [ -z "$tcp_buffer" ] || [ -z "$router_b_buffer" ] || [ -z "$router_c_buffer" ] || [ -z "$link_b_BER" ] || [ -z "$topology_id" ];then
    echo "$(tput setaf 1)Empty value! Exit...$(tput sgr 0)"
    exit
  fi
}

# router_b_buffer and router_c_buffer becomes almost useless. Bucause it sets device queue only. Queue disc setting is decided by link bandwidth
function loadDefaultBufferSetting(){
  tcp_buffer="262144";router_b_buffer="50";router_c_buffer="50";link_b_BER="0.00002";topology_id="11"
  echo 'tcp_buffer='$tcp_buffer ' router_b_buffer='$router_b_buffer ' router_c_buffer='$router_b_buffer ' link_b_BER='$link_b_BER ' topology_id='$topology_id 
}

function loadParamExp1() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="150Kbps" ["link_c_BW"]="150Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp1")
}

function loadParamExp2() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp2")
}

function loadParamExp3() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="250Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp3")
}

function loadParamExp4() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="150Kbps" ["link_c_BW"]="150Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp4")
}

function loadParamExp5() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp5")
}

function loadParamExp6() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="250Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp6")

}

#####

function loadParamExp10() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="230Kbps" ["link_b_BW"]="170Kbps" ["link_c_BW"]="80Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp10")
}

function loadParamExp11() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="240Kbps" ["link_b_BW"]="210Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp11")
}

function loadParamExp12() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="100Kbps" ["link_c_BW"]="200Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="50ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp12")
}

function loadParamExp13() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="260Kbps" ["link_b_BW"]="110Kbps" ["link_c_BW"]="150Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp13")
}

function loadParamExp14() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="250Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp14")
}

function loadParamExp15() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="410Kbps" ["link_b_BW"]="260Kbps" ["link_c_BW"]="130Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp15")
}

function loadParamExp16() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="390Kbps" ["link_b_BW"]="190Kbps" ["link_c_BW"]="180Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp16")
}

function loadParamExp17() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="430Kbps" ["link_b_BW"]="220Kbps" ["link_c_BW"]="150Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp17")
}

function loadParamExp18() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="380Kbps" ["link_b_BW"]="90Kbps" ["link_c_BW"]="280Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp18")
}

function loadParamExp19() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="250Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp19")
}

#####

function loadParamExp21() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="100Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp21")
}

function loadParamExp22() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="100Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp22")
}

function loadParamExp23() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp23")
}

function loadParamExp24() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp24")
}

# Modified, switched link b and link c X
function loadParamExp25() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp25")
}

function loadParamExp26() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="100Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp26")
}

function loadParamExp27() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="100Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp27")
}

function loadParamExp28() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp28")
}

# Modified, switched link b and link c X
function loadParamExp29() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp29")
}

function loadParamExp30() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="50ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp30")
}

function loadParamExp31() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="150Kbps" ["link_c_BW"]="150Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp31")
}

function loadParamExp32() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp32")
}

# Modified, switched link b and link c X
function loadParamExp33() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="250Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp33")
}

function loadParamExp34() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="150Kbps" ["link_c_BW"]="150Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp34")
}

function loadParamExp35() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp35")
}

# Modified, switched link b and link c X
function loadParamExp36() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="250Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp36")
}





function loadParamExp900() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="60Kbps" ["link_c_BW"]="110Kbps" ["link_a_delay"]="3ms" ["link_b_delay"]="40ms" ["link_c_delay"]="25ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp900")
}

function loadParamExp901() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="100Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="300Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="125ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp901")
}

function loadParamExp902() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="300Kbps" ["link_b_BW"]="500Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="150ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp902")
}

function loadParamExp903() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="70Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="35ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp903")
}

function loadParamExp904() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="200Kbps" ["link_b_BW"]="150Kbps" ["link_c_BW"]="30Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="5ms" ["link_c_delay"]="250ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp904")
}

function loadParamExp905() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="25ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp905")
}

function loadParamExp906() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="120Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="150ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp906")
}

function loadParamExp907() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="100Kbps" ["link_b_BW"]="300Kbps" ["link_c_BW"]="200Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp907")
}

function loadParamExp908() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="150Kbps" ["link_b_BW"]="100Kbps" ["link_c_BW"]="250Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="135ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp908")
}

function loadParamExp909() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="150Kbps" ["link_b_BW"]="70Kbps" ["link_c_BW"]="50Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp909")
}

function loadParamExp910() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="120Kbps" ["link_c_BW"]="250Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="5ms" ["link_c_delay"]="20ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp910")
}

function loadParamExp911() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="400Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="300Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="25ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp911")
}

function loadParamExp912() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="150Kbps" ["link_b_BW"]="120Kbps" ["link_c_BW"]="300Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="150ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp912")
}

function loadParamExp913() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="200Kbps" ["link_b_BW"]="100Kbps" ["link_c_BW"]="200Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp913")
}

function loadParamExp914() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="250Kbps" ["link_b_BW"]="100Kbps" ["link_c_BW"]="200Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="35ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp914")
}

function loadParamExp915() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="300Kbps" ["link_b_BW"]="70Kbps" ["link_c_BW"]="250Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp915")
}

function loadParamExp999() {
  checkNoneEmpty
  Ns3Config+=(["link_a_BW"]="50Kbps" ["link_b_BW"]="200Kbps" ["link_c_BW"]="100Kbps" ["link_a_delay"]="6ms" ["link_b_delay"]="15ms" ["link_c_delay"]="15ms" \
              ["tcp_buffer"]="$tcp_buffer" ["router_b_buffer"]="$router_b_buffer" ["router_c_buffer"]="$router_c_buffer" ["link_b_BER"]="$link_b_BER" ["topology_id"]="$topology_id" ["experiment"]="Exp999")
}
