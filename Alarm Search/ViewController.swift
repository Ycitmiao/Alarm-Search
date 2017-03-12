//
//  ViewController.swift
//  Alarm Search
//
//  Created by 孫苗 on 16/3/9.
//  Copyright © 2016年 孫苗. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    // User input alarm code
    @IBOutlet weak var userInputCode: UITextField!
    //Alarm content showing area
    @IBOutlet weak var alarmContent: UITextView!
    //Alarm reason showing area
    @IBOutlet weak var alarmReason: UITextView!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var alarmContentLabel: UILabel!
    
    @IBOutlet weak var alarmReasonLabel: UILabel!
    
    @IBOutlet weak var alarmSolutionLabel: UILabel!
    
    @IBOutlet weak var alarmSolution: UITextView!
    
    //magnify funciton outlet
    // @IBOutlet weak var magnifyingView: UIImageView!
    
    //difine the outlet for segment Control
    @IBOutlet weak var typeSegent: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Thread.sleep(forTimeInterval: 3.0)
        //make the textView to be uneditable.
        alarmContent.isEditable = false
        alarmReason.isEditable = false
        alarmSolution.isEditable = false
        
        //make the button edge to be round
        searchButton.layer.masksToBounds = true
        searchButton.layer.cornerRadius = 5.0
        
        //make the alarm content label edge to be corner
        alarmContentLabel.layer.masksToBounds = true
        alarmContentLabel.layer.cornerRadius = 2.5
        
        //make the alarm reason label edge to be corner
        alarmReasonLabel.layer.masksToBounds = true
        alarmReasonLabel.layer.cornerRadius = 2.5
        
        //make the alarm solution label edge to be cornor
        alarmSolutionLabel.layer.masksToBounds = true
        alarmSolutionLabel.layer.cornerRadius = 2.5
        
        //make the keyboard of alarm input textfield to be number pad
        userInputCode.keyboardType = UIKeyboardType.numberPad
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    //Back to main scene
    @IBAction func backToStartScene(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil )
    }
    //difine the actions of ENTER button
    
    @IBAction func searchAlarmCode(_ sender: AnyObject) {
        
        if userInputCode.text! == "" {
            alarmContent.text! = "アラームコードを入力してください"
            alarmReason.text! = "アラームコードを入力してください"
            alarmSolution.text! = "アラームコードを入力してください"
        } else {
            switch typeSegent.selectedSegmentIndex{
            case 0:
                //EHU alram shows
                switch userInputCode.text! {
                case "20":
                    alarmContent.text! = "DC低電圧異常（154V未満）"
                    alarmReason.text! = "①電源電圧の低下　②コントローラの故障"
                    alarmSolution.text! = ""
                    
                case "30":
                    alarmContent.text! = "圧力センサ系異常"
                    alarmReason.text! = "圧力センサの断線また接触不良"
                    alarmSolution.text! = ""
                    
                    case "40":
                    alarmContent.text! = "モータサーミスタ断線"
                    alarmReason.text! = "①コネクタ未接続　②コネクタ接触不良　③サーミスタ故障　④サーミスタ入力回路破損"
                    alarmSolution.text! = ""

                    case "41":
                    alarmContent.text! = "モータ温度の異常上昇"
                    alarmReason.text! = "①ACファン停止　②ラジエータ目詰まり　③回転数上昇　④回転数低下で不安定状態　⑤周囲温度高い"
                    alarmSolution.text! = ""
                    
                    case "42":
                    alarmContent.text! = "放熱フィンサーミスタ断線"
                    
                    case "43":
                    alarmContent.text! = "放熱フィン温度の異常上昇"
                    alarmReason.text! = "①回転数上昇　②回転数低下で不安定状態　③周囲温度高い"
                    
                    case "62":
                    alarmContent.text! = "圧力低下警告"
                    alarmReason.text! = "①圧力スイッチ判定値の設定間違い　②主機からの油漏れ　③意図した設定値の想定違い"
                    
                    case "63":
                    alarmContent.text! = "圧力スイッチ作動"
                    alarmReason.text! = "圧力低下"
                    
                    case "64":
                    alarmContent.text! = "ドライ運転異常"
                    alarmReason.text! = "①作動油レブルの低下　②ポンプ内部リーク増加"
                    
                    case "65":
                    alarmContent.text! = "回転数不安定警告"
                    alarmReason.text! = "①最低回転数調整用の可変絞りにゴミ詰まり　②モータ出力トルクが低下、あるいはポンプ負荷トルクが増加"
                    
                    case "80":
                    alarmContent.text! = "IPM異常（出力デバイス異常）"
                    alarmContent.text! = "①モータ制御不良による過電流　②冷却不足によるコントローラの過熱　③コントローラ故障（制御電源過電圧）"
                    
                    
                    
                default:
                    alarmReason.text! = "E\(userInputCode.text!)はEHUのアラームではなく、機種をSUTに選択して、もう一回検索してみてください"
                    alarmContent.text! = "E\(userInputCode.text!)はEHUのアラームではなく、機種をSUTに選択して、もう一回検索してみてください"
                    alarmSolution.text! = "E\(userInputCode.text!)はEHUのアラームではなく、機種をSUTに選択して、もう一回検索してみてください"
                }
                
            case 1:
                switch userInputCode.text!{
                    
                case "9","10":
                    alarmContent.text! = "出力ディバイスの過電流保護が作動した"
                    alarmReason.text! = "①モータコイルのレアショート\r②モータの短絡\r③コントローラ或はエンコーダの破損"
                    alarmSolution.text! = "①モータポンプを交換する\r②コントローラ或はエンコーダを交換する"
                    
                case "11":
                    alarmContent.text! = "瞬時過電流：モータ出力電流が規定値を超えた"
                    alarmReason.text! = "①エンコーダハーネスが外れている\r②エンコーダハーネスの破損\r③エンコーダの故障\r④コントローラの故障"
                    alarmSolution.text! = "①エンコーダハーネスを接続する\r②エンコーダハーネスを交換する\r③モータポンプを交換する\r④コントローラを交換する"
                    
                case "12":
                    alarmContent.text! = "過速度：モータ回転速度が最高回転速度の120％を超えた"
                    alarmReason.text! = "①エンコーダの故障\r②コントローラの故障\r③ノイズの影響"
                    alarmSolution.text! = "①モータポンプを交換する\r②コントローラを交換する\r③ノイズフィルタを追加する"
                    
                case "13":
                    alarmContent.text! = "回生ブレーキ過電流"
                    alarmReason.text! = "回生ブレーキ回路の保護が動作した"
                    alarmSolution.text! = ""
                    
                case "14":
                    alarmContent.text! = "回生ブレーキ過負荷：回生抵抗の過負荷保護が動作した"
                    alarmReason.text! = "①電源電圧が仕様範囲外となっている\r②減速時のブレーキが大きすぎる\r"
                    alarmSolution.text! = "①電源電圧をモニタモード「n12:主回路電圧」にて確認し、電圧を規定内にする\r②パラメータ「P13~P28：減速時間設定」の値を小さくする；設定モード「P05：回生時負荷指令率」、設定モード「P06：減速時回生負荷率指令」の値を小さくする"
                    
                    
                case "15":
                    alarmContent.text! = "不足電圧：主回路電圧が規定値以下になった"
                    alarmReason.text! = "①電源電圧が低い\r②完全に表示が消えていない状態で電源を再投入する\r③コントローラの故障"
                    alarmSolution.text! = "①電源電圧をモニタモード「n12：主回路電圧」にて確認し、電圧を規定内にする\r②表示が完全に消えてから電源を再投入する\r③コントローラを交換する"
                    
                case "16":
                    alarmContent.text! = "過電圧:主回路直流電圧が規定値を超えた"
                    alarmReason.text! = "①電源電圧が高い\r②コントローラの故障\r③PQ選択切換時の急減速"
                    alarmSolution.text! = "①電源電圧をモニタモード「n12：主回路電圧」にて確認し、電圧を規定内に戻す\r②コントローラを交換する\r③パラメータP13~P28：減速時間設定」の値を小さくする；設定モード「P05：回生時負荷指令率」、設定モード「P06：減速時回生負荷率指令」の値を小さくする"
                    
                case "17":
                    alarmContent.text! = "モータ電子サーマル：モータ電子サーマル積算値が規定値(110%)を超えた"
                    alarmReason.text! = "①負荷トルクが大きい\r②ノイズの影響でモータ制御に不具合"
                    alarmSolution.text! = "①モータポンプを交換する\r②ノイズフィルタを交換する或はノイズフィルタを追加する"
                    
                case "18":
                    alarmContent.text! = "磁極検出異常：磁極検出が規定値時間以内に終了しなかった"
                    alarmReason.text! = "出力ディバイスの異常"
                    alarmSolution.text! = "コントローラを交換する"
                    
                case "20":
                    alarmContent.text! = "エンコーダ断線"
                    alarmReason.text! = "エンコーダ線のいずれかが断線、あるいは接触不良となっている"
                    alarmSolution.text! = "エンコーダハーネスを交換する"
                    
                case "21":
                    alarmContent.text! = "モータ配線断線"
                    alarmReason.text! = "①モータ配線いずれかが断線、あるいは接触不良となっている\r②出力デバイスの故障"
                    alarmSolution.text! = "①モータ配線を交換する\r②コントローラを交換する"
                    
                case "24":
                    alarmContent.text! = "電源欠相：電源配線のU、V、Wのいずれかが欠相している"
                    alarmReason.text! = "①電源配線が断線している或は接触不良\r②三相の電圧にばらつきがある"
                    alarmSolution.text! = "①電源配線を確認する\r②各相の電圧を確認し、正常値に戻す"
                    
                case "27":
                    alarmContent.text! = "コントロール電子サーマル"
                    alarmReason.text! = "コンートロル電子サーマル積算値が規定値(120%)を超えた"
                    
                case "28":
                    alarmContent.text! = "短時間定格オーバー"
                    alarmReason.text! = "圧力、流量出力が短時間定格をオーバーした"
                    
                case "30":
                    alarmContent.text! = "圧力センサー系異常：モータ圧力センサが断線もしくは短絡した"
                    alarmReason.text! = "①圧力センサコネクタが未接続\r②圧力センサハーネスの破損\r③圧力センサの故障\r④コントローラの故障"
                    alarmSolution.text! = "①コネクタを接続する\r②圧力センサハーネスを交換する\r③圧力センサを交換する\r④コントローラを交換する"
                    
                case "31":
                    alarmContent.text! = "モータ起動異常：指令と実際のモータ回転方向がパラメータ「P34：モータ起動異常判定時間」の設定値以上異なっている"
                    alarmReason.text! = "①負荷ボリュームが大きい\r②エンコーダハーネスの破損\r③モータ配線が断線或は接触不良\r④エンコーダの故障"
                    alarmSolution.text! = "①パラメータ「P34：モータ起動異常判定時間」の値を大きくする\r②エンコーダハーネスを交換する\r③モータ配線を正しく接続する\r④モータポンプを交換する"
                    
                    
                case "40":
                    alarmContent.text! = "モータサーミスタ断線、短絡"
                    alarmReason.text! = "①モータサーミスタ断線が断線している\r②コントローラの故障"
                    alarmSolution.text! = "①サーミスタを交換する\r②コントローラを交換する"
                    
                case "41":
                    alarmContent.text! = "モータ温度以上上昇"
                    alarmReason.text! = "モータの温度が規定値を2秒間超えた：\r3018仕様が＞＝85℃、ほか仕様＞＝140℃"
                    
                case "42":
                    alarmContent.text! = "放熱フィンサーミスタ断線"
                    alarmReason.text! = "フィンサーモ線が断線、あるいは接触不良となっている"
                    
                case "43":
                    alarmContent.text! = "フィン温度以上上昇"
                    alarmReason.text! = "放熱フィンの温度が規定値を30秒間超えた"
                    
                case "64":
                    alarmContent.text! = "ドライ運転異常"
                    alarmReason.text! = "モータが回転しても昇圧しない"
                    
                case "91":
                    alarmContent.text! = "CPU暴走（ウオッチドック）"
                    alarmReason.text! = "制御周期に異常が発生した"
                    
                case "92":
                    alarmContent.text! = "EEPROM異常（書き込めない）"
                    alarmReason.text! = "EEPROMに書き込め出来ない"
                    
                case "93","94":
                    alarmContent.text! = "EEPROMデータ異常（ユーザー）"
                    alarmReason.text! = "EEPROMのデータが異常"
                    
                case "95":
                    alarmContent.text! = "ソフト整合異常"
                    alarmReason.text! = "ユニットIDとハード形式が合致していない"
                    
                case "44":
                    alarmContent.text! = "モータ温度異常警告"
                    alarmReason.text! = "モータサーモ温度が規定値が10秒間を超えた"
                    
                case "45":
                    alarmContent.text! = "フィン温度異常警告"
                    alarmReason.text! = "フィンサーモ温度が規定値が10秒間を超えた"
                    
                case "49":
                    alarmContent.text! = "過負荷警告"
                    alarmReason.text! = "モータorコントローラ電子サーマル積算率が「P29:過負荷ワーニング出力判定値」を超えた"
                    
                case "50":
                    alarmContent.text! = "電源電圧低下警告"
                    alarmReason.text! = "主回路直流電圧が規定値未満になった"
                    
                case "60":
                    alarmContent.text! = "圧力偏差異常警告"
                    alarmReason.text! = "電流指令率が規定値（99.9%-5sec）以上となった"
                    
                default:
                    alarmContent.text! = "入力したアラームがSUTにありません"
                    alarmReason.text! = "入力したアラームがSUTにありません"
                    alarmSolution.text = "入力したアラームがSUTにありません"
                }
                
            default:
                alarmContent.text! = "機種を選択してください"
                alarmReason.text! = "機種を選択してください"
                alarmSolution.text = "機種を選択してください"
                
                
            }
        }
        userInputCode.resignFirstResponder()
    }
    
}

