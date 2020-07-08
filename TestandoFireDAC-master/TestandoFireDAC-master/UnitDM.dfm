object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 269
  Width = 587
  object FDQuery1: TFDQuery
    Left = 504
    Top = 16
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=gfkvpgdg'
      'User_Name=gfkvpgdg'
      'MonitorBy=FlatFile'
      'Server=motty.db.elephantsql.com'
      'Password=L_9QzUV8RAt3v7VHz5or5tocnTn8ku7F'
      'DriverID=PG')
    Left = 408
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    OnDriverCreated = FDPhysPgDriverLink1DriverCreated
    Left = 456
    Top = 16
  end
end
