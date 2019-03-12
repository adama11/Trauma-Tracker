//
//  DetailedPatientViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/24/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit

class DetailedPatientViewController: UIViewController {
    
    @IBOutlet weak var pulseRateIcon: UIView!
    @IBOutlet weak var respRateIcon: UIView!
    @IBOutlet weak var bodyTempIcon: UIView!
    @IBOutlet weak var spo2Icon: UIView!
    @IBOutlet weak var bloodPressureIcon: UIView!
    @IBOutlet weak var ESILabel: UILabel!
    @IBOutlet weak var ecgGraph: Chart!
    
    @IBOutlet weak var bodyTemperature: UILabel!
    @IBOutlet weak var bloodPressure: UILabel!
    @IBOutlet weak var spo2: UILabel!
    @IBOutlet weak var pulseRate: UILabel!
    @IBOutlet weak var respiratoryRate: UILabel!
    var roomNumber : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // use https://data.mendeley.com/datasets/7dybx7wyfn/3#file-26f8ae3f-f76f-4381-bce1-3674be0db98b
        let data = ChartSeries([955.0, 955.0, 955.0, 957.0, 960.0, 968.0, 970.0, 971.0, 972.0, 969.0, 971.0, 972.0, 973.0, 970.0, 970.0, 969.0, 968.0, 970.0, 973.0, 971.0, 971.0, 970.0, 968.0, 972.0, 975.0, 975.0, 973.0, 972.0, 972.0, 975.0, 978.0, 978.0, 977.0, 976.0, 980.0, 983.0, 986.0, 986.0, 986.0, 984.0, 986.0, 987.0, 988.0, 987.0, 986.0, 983.0, 984.0, 984.0, 985.0, 983.0, 980.0, 979.0, 979.0, 980.0, 981.0, 977.0, 972.0, 969.0, 965.0, 965.0, 967.0, 968.0, 967.0, 967.0, 968.0, 971.0, 972.0, 974.0, 972.0, 971.0, 969.0, 972.0, 973.0, 973.0, 972.0, 967.0, 967.0, 969.0, 973.0, 972.0, 968.0, 965.0, 967.0, 965.0, 966.0, 967.0, 968.0, 966.0, 964.0, 966.0, 969.0, 968.0, 966.0, 963.0, 962.0, 965.0, 967.0, 967.0, 968.0, 967.0, 968.0, 970.0, 970.0, 968.0, 968.0, 963.0, 966.0, 965.0, 966.0, 967.0, 965.0, 963.0, 965.0, 964.0, 964.0, 964.0, 962.0, 959.0, 958.0, 961.0, 961.0, 960.0, 963.0, 965.0, 968.0, 971.0, 974.0, 974.0, 974.0, 973.0, 973.0, 978.0, 982.0, 986.0, 988.0, 991.0, 1001.0, 1023.0, 1047.0, 1067.0, 1089.0, 1113.0, 1135.0, 1159.0, 1176.0, 1189.0, 1186.0, 1164.0, 1129.0, 1091.0, 1050.0, 1017.0, 992.0, 975.0, 965.0, 968.0, 972.0, 976.0, 976.0, 974.0, 971.0, 972.0, 971.0, 968.0, 963.0, 960.0, 960.0, 961.0, 959.0, 958.0, 954.0, 953.0, 953.0, 954.0, 955.0, 955.0, 954.0, 953.0, 956.0, 958.0, 958.0, 960.0, 960.0, 962.0, 965.0, 965.0, 968.0, 965.0, 963.0, 963.0, 962.0, 965.0, 967.0, 964.0, 962.0, 960.0, 963.0, 961.0, 964.0, 964.0, 963.0, 964.0, 965.0, 970.0, 971.0, 973.0, 973.0, 970.0, 972.0, 973.0, 974.0, 976.0, 977.0, 976.0, 976.0, 976.0, 977.0, 976.0, 975.0, 975.0, 976.0, 979.0, 982.0, 982.0, 983.0, 982.0, 984.0, 985.0, 986.0, 988.0, 986.0, 982.0, 984.0, 985.0, 985.0, 984.0, 982.0, 982.0, 981.0, 980.0, 983.0, 979.0, 979.0, 979.0, 978.0, 981.0, 977.0, 978.0, 979.0, 974.0, 975.0, 977.0, 979.0, 979.0, 979.0, 979.0, 978.0, 978.0, 980.0, 979.0, 978.0, 977.0, 976.0, 975.0, 979.0, 978.0, 976.0, 974.0, 974.0, 974.0, 977.0, 976.0, 975.0, 973.0, 973.0, 974.0, 976.0, 976.0, 974.0, 970.0, 970.0, 971.0, 973.0, 974.0, 969.0, 967.0, 965.0, 966.0, 965.0, 965.0, 962.0, 961.0, 958.0, 961.0, 964.0, 964.0, 966.0, 966.0, 966.0, 969.0, 971.0, 971.0, 968.0, 968.0, 968.0, 972.0, 976.0, 974.0, 976.0, 979.0, 978.0, 980.0, 984.0, 982.0, 982.0, 979.0, 980.0, 978.0, 979.0, 979.0, 978.0, 977.0, 976.0, 976.0, 977.0, 976.0, 976.0, 973.0, 974.0, 974.0, 976.0, 976.0, 975.0, 972.0, 973.0, 972.0, 975.0, 975.0, 974.0, 970.0, 969.0, 972.0, 975.0, 974.0, 971.0, 968.0, 969.0, 969.0, 972.0, 972.0, 973.0, 975.0, 977.0, 985.0, 996.0, 1009.0, 1029.0, 1048.0, 1070.0, 1094.0, 1121.0, 1141.0, 1158.0, 1171.0, 1181.0, 1178.0, 1161.0, 1127.0, 1085.0, 1043.0, 1014.0, 1003.0, 997.0, 991.0, 987.0, 987.0, 988.0, 988.0, 988.0, 983.0, 980.0, 977.0, 976.0, 975.0, 975.0, 971.0, 970.0, 968.0, 968.0, 968.0, 968.0, 967.0, 967.0, 965.0, 963.0, 963.0, 964.0, 964.0, 964.0, 961.0, 963.0, 966.0, 969.0, 968.0, 968.0, 967.0, 964.0, 966.0, 967.0, 967.0, 966.0, 966.0, 967.0, 968.0, 970.0, 969.0, 970.0, 970.0, 972.0, 973.0, 977.0, 978.0, 979.0, 980.0, 977.0, 980.0, 983.0, 985.0, 984.0, 984.0, 986.0, 987.0, 991.0, 990.0, 992.0, 992.0, 992.0, 994.0, 997.0, 996.0, 998.0, 996.0, 997.0, 997.0, 1000.0, 998.0, 996.0, 995.0, 994.0, 994.0, 996.0, 993.0, 990.0, 986.0, 986.0, 987.0, 990.0, 988.0, 986.0, 983.0, 979.0, 982.0, 982.0, 979.0, 975.0, 968.0, 968.0, 968.0, 969.0, 967.0, 967.0, 964.0, 965.0, 966.0, 967.0, 969.0, 968.0, 968.0, 971.0, 972.0, 974.0, 973.0, 972.0, 971.0, 971.0, 973.0, 974.0, 975.0, 974.0, 972.0, 975.0, 976.0, 981.0, 982.0, 979.0, 977.0, 975.0, 978.0, 980.0, 978.0, 973.0, 973.0, 974.0, 975.0, 974.0, 974.0, 972.0, 971.0, 971.0, 975.0, 976.0, 974.0, 973.0, 971.0, 969.0, 969.0, 970.0, 967.0, 964.0, 963.0, 962.0, 964.0, 966.0, 964.0, 962.0, 960.0, 960.0, 962.0, 964.0, 962.0, 961.0, 959.0, 960.0, 962.0, 965.0, 963.0, 963.0, 962.0, 965.0, 967.0, 970.0, 968.0, 966.0, 967.0, 967.0, 969.0, 971.0, 967.0, 967.0, 964.0, 964.0, 966.0, 967.0, 968.0, 965.0, 966.0, 965.0, 967.0, 967.0, 966.0, 965.0, 967.0, 969.0, 972.0, 974.0, 973.0, 972.0, 969.0, 968.0, 968.0, 970.0, 967.0, 966.0, 964.0, 963.0, 965.0, 967.0, 966.0, 965.0, 962.0, 962.0, 966.0, 965.0, 966.0, 964.0, 963.0, 963.0, 965.0, 968.0, 966.0, 966.0, 964.0, 964.0, 966.0, 968.0, 968.0, 968.0, 968.0, 970.0, 972.0, 975.0, 975.0, 973.0, 972.0, 973.0, 976.0, 976.0, 977.0, 975.0, 975.0, 973.0, 973.0, 973.0, 970.0, 968.0, 967.0, 969.0, 972.0, 971.0, 972.0, 972.0, 971.0, 972.0, 971.0, 971.0, 971.0, 968.0, 967.0, 967.0, 968.0, 968.0, 968.0, 967.0, 966.0, 965.0, 967.0, 969.0, 968.0, 968.0, 967.0, 965.0, 967.0, 967.0, 968.0, 967.0, 965.0, 967.0, 970.0, 971.0, 972.0, 970.0, 970.0, 969.0, 972.0, 974.0, 975.0, 973.0, 970.0, 970.0, 972.0, 976.0, 977.0, 975.0, 973.0, 974.0, 975.0, 976.0, 975.0, 973.0, 977.0, 978.0, 978.0, 983.0, 984.0, 984.0, 984.0, 984.0, 986.0, 988.0, 987.0, 987.0, 987.0, 989.0, 993.0, 999.0, 1001.0, 1003.0, 1012.0, 1030.0, 1055.0, 1080.0, 1107.0, 1134.0, 1158.0, 1180.0, 1199.0, 1215.0, 1212.0, 1194.0, 1159.0, 1118.0, 1074.0, 1039.0, 1007.0, 986.0, 970.0, 965.0, 970.0, 978.0, 982.0, 982.0, 981.0, 978.0, 978.0, 978.0, 974.0, 972.0, 971.0, 972.0, 974.0, 976.0, 973.0, 972.0, 971.0, 972.0, 974.0, 976.0, 975.0, 974.0, 974.0, 976.0, 977.0, 979.0, 978.0, 976.0, 973.0, 974.0, 974.0, 977.0, 974.0, 973.0, 970.0, 972.0, 974.0, 975.0, 975.0, 975.0, 975.0, 977.0, 979.0, 978.0, 979.0, 975.0, 976.0, 976.0, 979.0, 978.0, 977.0, 977.0, 977.0, 977.0, 978.0, 979.0, 979.0, 979.0, 978.0, 981.0, 984.0, 988.0, 989.0, 989.0, 988.0, 992.0, 994.0, 997.0, 995.0, 995.0, 997.0, 999.0, 1000.0, 1002.0, 1005.0, 1005.0, 1005.0, 1007.0, 1009.0, 1012.0, 1010.0, 1008.0, 1007.0, 1007.0, 1006.0, 1007.0, 1005.0, 1001.0, 998.0, 997.0, 995.0, 995.0, 994.0, 989.0, 988.0, 986.0, 985.0, 984.0, 982.0, 979.0, 977.0, 979.0, 979.0, 981.0, 977.0, 978.0, 974.0, 974.0, 976.0, 977.0, 977.0, 974.0, 973.0, 976.0, 976.0, 975.0, 975.0, 975.0, 974.0, 977.0, 979.0, 982.0, 982.0, 979.0, 980.0, 982.0, 985.0, 985.0, 984.0, 982.0, 983.0, 984.0, 986.0, 987.0, 987.0, 986.0, 985.0, 986.0, 984.0, 986.0, 986.0, 984.0, 982.0, 981.0, 985.0, 983.0, 984.0, 981.0, 979.0, 976.0, 976.0, 978.0, 975.0, 973.0, 970.0, 972.0, 974.0, 978.0, 977.0, 977.0, 975.0, 974.0, 978.0, 980.0, 978.0, 978.0, 976.0, 977.0, 979.0, 981.0, 981.0, 979.0, 976.0, 977.0, 978.0, 980.0, 979.0, 977.0, 973.0, 975.0, 977.0, 980.0, 982.0, 980.0, 980.0, 980.0, 981.0, 982.0, 982.0, 983.0, 977.0, 976.0, 977.0, 979.0, 980.0, 978.0, 975.0, 975.0, 978.0, 980.0, 982.0, 980.0, 976.0, 978.0, 979.0, 981.0, 979.0, 978.0, 972.0, 972.0, 972.0, 971.0, 973.0, 969.0, 969.0, 972.0, 972.0, 976.0, 976.0, 976.0, 976.0, 978.0, 978.0, 978.0, 977.0, 976.0, 974.0, 972.0, 974.0, 973.0, 973.0, 973.0, 972.0, 970.0, 971.0, 972.0, 973.0, 971.0, 970.0, 971.0, 973.0, 975.0, 976.0, 972.0, 972.0, 973.0, 974.0, 973.0, 972.0, 972.0, 970.0, 969.0, 970.0, 973.0, 972.0, 971.0, 972.0, 973.0, 975.0, 976.0, 976.0, 975.0, 974.0, 976.0, 978.0, 981.0, 981.0, 981.0, 978.0, 981.0, 985.0, 987.0, 987.0, 987.0, 989.0, 994.0, 999.0, 1003.0, 1005.0, 1007.0, 1013.0, 1030.0, 1051.0, 1071.0, 1088.0, 1108.0, 1126.0, 1149.0, 1168.0, 1187.0, 1203.0, 1212.0, 1201.0, 1178.0, 1144.0, 1107.0, 1066.0, 1029.0, 1005.0, 989.0, 982.0, 979.0, 982.0, 988.0, 988.0, 988.0, 986.0, 985.0, 982.0, 981.0, 977.0, 977.0, 977.0, 978.0, 978.0, 977.0, 974.0, 976.0, 976.0, 978.0, 976.0, 974.0, 971.0, 973.0, 976.0, 977.0, 978.0, 976.0, 974.0, 974.0, 976.0, 976.0, 976.0, 975.0, 974.0, 976.0, 978.0, 979.0, 979.0, 977.0, 976.0, 980.0, 985.0, 988.0, 988.0, 988.0, 983.0, 986.0, 989.0, 993.0, 992.0, 989.0, 985.0, 987.0, 990.0, 992.0, 994.0, 993.0, 991.0, 991.0, 994.0, 997.0, 998.0, 997.0, 995.0, 996.0, 998.0, 1001.0, 1000.0, 998.0, 997.0, 996.0, 999.0, 1001.0, 1004.0, 1003.0, 1000.0, 1001.0, 1002.0, 1004.0, 1004.0, 1005.0, 1003.0, 1002.0, 1004.0, 1004.0, 1004.0, 1001.0, 999.0, 995.0, 996.0, 997.0, 996.0, 994.0, 992.0, 990.0, 991.0, 992.0, 991.0, 992.0, 990.0, 991.0, 991.0, 991.0, 990.0, 990.0, 988.0, 989.0, 988.0, 988.0, 988.0, 986.0, 984.0, 986.0, 987.0, 988.0, 987.0, 986.0, 987.0, 988.0, 990.0, 992.0, 992.0, 990.0, 988.0, 990.0, 992.0, 992.0, 992.0, 992.0, 991.0, 994.0, 996.0, 999.0, 1002.0, 1002.0, 1004.0, 1012.0, 1025.0, 1045.0, 1068.0, 1088.0, 1107.0, 1130.0, 1153.0, 1175.0, 1192.0, 1199.0, 1193.0, 1185.0, 1170.0, 1153.0, 1122.0, 1085.0, 1052.0, 1029.0, 1020.0, 1020.0, 1015.0, 1006.0, 997.0, 995.0, 994.0, 995.0, 991.0, 986.0, 981.0, 980.0, 981.0, 980.0, 978.0, 977.0, 973.0, 975.0, 976.0, 978.0, 978.0, 975.0, 973.0, 971.0, 972.0, 974.0, 974.0, 971.0, 967.0, 969.0, 970.0, 971.0, 970.0, 970.0, 967.0, 968.0, 968.0, 973.0, 972.0, 974.0, 972.0, 972.0, 974.0, 975.0, 977.0, 978.0, 976.0, 976.0, 978.0, 979.0, 979.0, 980.0, 977.0, 977.0, 981.0, 982.0, 981.0, 982.0, 982.0, 984.0, 984.0, 989.0, 989.0, 988.0, 988.0, 993.0, 995.0, 997.0, 999.0, 998.0, 999.0, 1002.0, 1008.0, 1008.0, 1009.0, 1010.0, 1009.0, 1011.0, 1013.0, 1016.0, 1015.0, 1014.0, 1011.0, 1013.0, 1013.0, 1014.0, 1013.0, 1011.0, 1007.0, 1007.0, 1007.0, 1007.0, 1004.0, 1001.0, 997.0, 996.0, 995.0, 997.0, 995.0, 993.0, 990.0, 985.0, 984.0, 984.0, 983.0, 980.0, 977.0, 975.0, 975.0, 977.0, 976.0, 976.0, 975.0, 975.0, 977.0, 977.0, 976.0, 976.0, 974.0, 978.0, 979.0, 983.0, 983.0, 983.0, 981.0, 983.0, 983.0, 983.0, 984.0, 982.0, 981.0, 982.0, 983.0, 984.0, 984.0, 984.0, 983.0, 986.0, 991.0, 994.0, 1001.0, 1010.0, 1019.0, 1040.0, 1063.0, 1083.0, 1100.0, 1117.0, 1137.0, 1160.0, 1180.0, 1192.0, 1199.0, 1199.0, 1188.0, 1166.0, 1136.0, 1099.0, 1055.0, 1017.0, 997.0, 992.0, 991.0, 990.0, 984.0, 980.0, 978.0, 976.0, 976.0, 975.0, 973.0, 969.0, 967.0, 968.0, 968.0, 970.0, 967.0, 967.0, 964.0, 964.0, 964.0, 964.0, 965.0, 962.0, 961.0, 962.0, 963.0, 965.0, 966.0, 963.0, 962.0, 962.0, 964.0, 965.0, 966.0, 966.0, 965.0, 969.0, 971.0, 972.0, 973.0, 971.0, 971.0, 974.0, 975.0, 976.0, 978.0, 976.0, 974.0, 973.0, 972.0, 972.0, 968.0, 967.0, 967.0, 969.0, 969.0, 972.0, 970.0, 970.0, 970.0, 970.0, 972.0, 976.0, 977.0, 978.0, 977.0, 979.0, 982.0, 983.0, 984.0, 983.0, 982.0, 983.0, 985.0, 985.0, 982.0, 981.0, 981.0, 980.0, 980.0, 979.0, 982.0, 981.0, 980.0, 979.0, 980.0, 981.0, 981.0, 979.0, 974.0, 973.0, 975.0, 976.0, 974.0, 973.0, 972.0, 973.0, 972.0, 972.0, 973.0, 971.0, 967.0, 969.0, 969.0, 970.0, 969.0, 967.0, 964.0, 966.0, 967.0, 965.0, 964.0, 963.0, 960.0, 962.0, 960.0, 961.0, 960.0, 959.0, 958.0, 960.0, 960.0, 962.0, 960.0, 958.0, 959.0, 959.0, 961.0, 963.0, 962.0, 962.0, 964.0, 965.0, 966.0, 970.0, 969.0, 970.0, 967.0, 967.0, 968.0, 970.0, 968.0, 965.0, 964.0, 965.0, 969.0, 970.0, 968.0, 967.0, 965.0, 967.0, 969.0, 970.0, 972.0, 971.0, 970.0, 970.0, 972.0, 975.0, 974.0, 973.0, 969.0, 968.0, 968.0, 972.0, 973.0, 970.0, 965.0, 967.0, 966.0, 969.0, 970.0, 970.0, 965.0, 967.0, 966.0, 969.0, 970.0, 968.0, 965.0, 965.0, 967.0, 967.0, 969.0, 968.0, 966.0, 967.0, 967.0, 968.0, 971.0, 969.0, 966.0, 968.0, 969.0, 968.0, 969.0, 967.0, 964.0, 965.0, 965.0, 967.0, 967.0, 966.0, 964.0, 961.0, 962.0, 965.0, 964.0, 962.0, 960.0, 963.0, 963.0, 966.0, 967.0, 969.0, 972.0, 977.0, 981.0, 987.0, 996.0, 1012.0, 1028.0, 1048.0, 1074.0, 1098.0, 1125.0, 1149.0, 1168.0, 1188.0, 1207.0, 1213.0, 1199.0, 1170.0, 1131.0, 1087.0, 1042.0, 1010.0, 985.0, 969.0, 957.0, 952.0, 954.0, 963.0, 969.0, 969.0, 967.0, 967.0, 968.0, 965.0, 964.0, 960.0, 959.0, 960.0, 961.0, 961.0, 959.0, 957.0, 954.0, 956.0, 956.0, 956.0, 955.0, 954.0, 951.0, 952.0, 953.0, 955.0, 954.0, 952.0, 952.0, 953.0, 954.0, 955.0, 956.0, 952.0, 951.0, 955.0, 957.0, 958.0, 959.0, 958.0, 959.0, 962.0, 964.0, 968.0, 965.0, 964.0, 963.0, 965.0, 967.0, 968.0, 966.0, 967.0, 965.0, 969.0, 972.0, 974.0, 976.0, 975.0, 975.0, 977.0, 978.0, 979.0, 980.0, 979.0, 977.0, 980.0, 981.0, 983.0, 983.0, 981.0, 980.0, 981.0, 984.0, 985.0, 988.0, 986.0, 986.0, 988.0, 989.0, 993.0, 991.0, 990.0, 989.0, 988.0, 991.0, 994.0, 991.0, 989.0, 984.0, 984.0, 985.0, 984.0, 984.0, 978.0, 975.0, 975.0, 977.0, 980.0, 978.0, 977.0, 972.0, 971.0, 972.0, 975.0, 974.0, 975.0, 973.0, 975.0, 977.0, 979.0, 978.0, 976.0, 975.0, 976.0, 975.0, 976.0, 976.0, 973.0, 967.0, 969.0, 969.0, 970.0, 972.0, 970.0, 967.0, 967.0, 968.0, 970.0, 972.0, 969.0, 966.0, 966.0, 968.0, 969.0, 969.0, 967.0, 964.0, 965.0, 965.0, 969.0, 970.0, 968.0, 968.0, 969.0, 968.0, 970.0, 968.0, 967.0, 964.0, 965.0, 965.0, 966.0, 966.0, 966.0, 964.0, 967.0, 970.0, 973.0, 971.0, 970.0, 968.0, 969.0, 970.0, 972.0, 969.0, 970.0, 967.0, 969.0, 970.0, 971.0, 972.0, 970.0, 970.0, 970.0, 970.0, 970.0, 970.0, 969.0, 966.0, 966.0, 968.0, 968.0, 969.0, 967.0, 965.0, 965.0, 965.0, 965.0, 963.0, 958.0, 953.0, 957.0, 960.0, 963.0, 962.0, 962.0, 962.0, 961.0, 963.0, 963.0, 965.0, 963.0, 963.0, 965.0, 968.0, 970.0, 969.0, 967.0, 965.0, 967.0, 968.0, 970.0, 970.0, 968.0, 965.0, 968.0, 969.0, 971.0, 970.0, 964.0, 963.0, 964.0, 966.0, 966.0, 966.0, 963.0, 960.0, 962.0, 965.0, 966.0, 963.0, 965.0, 963.0, 962.0, 960])
//
//        let data = [
//            (x: 0, y: 0),
//            (x: 1, y: 3.1),
//            (x: 4, y: 2),
//            (x: 5, y: 4.2),
//            (x: 7, y: 5),
//            (x: 9, y: 9),
//            (x: 10, y: 8)
//        ]
        
        ecgGraph.xLabels = [0, 1800]
//        ecgGraph.yLabels = [0]
        ecgGraph.showYLabelsAndGrid = false
//        let series = ChartSeries(data: data)
        ecgGraph.add(data)
    }
    
    override func viewDidLayoutSubviews() {
        let vitalsItems: [UIView] = [pulseRateIcon, respRateIcon, bodyTempIcon, spo2Icon, bloodPressureIcon]
        for v in vitalsItems {
            drawIcon(square: v, color: UIColor.green.cgColor)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if self.roomNumber != "" {
            self.title = roomNumber
            if UserDefaults.standard.object(forKey: "Patients") != nil {
                //            print("Retrieving count of patients from UserDefaults.")
                let decoded  = UserDefaults.standard.object(forKey: "Patients") as! Data
                let decodedData = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! [String : Patient]
                //            print("count: \(decodedData.count)")
                let patient = decodedData[self.roomNumber] as! Patient
                bodyTemperature.text = String(patient.bodyTemperature)
                spo2.text = String(patient.spo2)
                pulseRate.text = String(patient.pulseRate)
                
            }
        }
    }
    
    func drawIcon(square: UIView, color: CGColor) {
        let inset: CGFloat = 4.0
        let circlePath = UIBezierPath(ovalIn: square.bounds.insetBy(dx: inset, dy: inset))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = color
        //    shapeLayer.strokeColor = UIColor.redColor().CGColor
        //    shapeLayer.lineWidth = desiredLineWidth
        square.layer.addSublayer(shapeLayer)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
