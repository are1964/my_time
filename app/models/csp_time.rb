
require 'composite_primary_keys'

class CspTime < ActiveRecord::Base
  self.table_name  = "cslibccd.csptime"
  set_primary_keys :tiuser, :tireq, :tidate, :titmfr, :titmto
end
#tiuser | varchar(10)   | NO   | PRI | NULL    |       |
#tireq  | int(11)       | NO   | PRI | NULL    |       |
#tidate | date          | NO   | PRI | NULL    |       |
#titmfr | decimal(19,2) | NO   | PRI | NULL    |       |
#tishf2 | varchar(1)    | NO   |     | NULL    |       |
#tibdid | varchar(2)    | NO   |     | NULL    |       |
#ticomp | varchar(1)    | NO   |     | NULL    |       |
#tieqno | int(11)       | NO   |     | NULL    |       |
#tiendt | date          | NO   |     | NULL    |       |
#tiday  | varchar(3)    | NO   |     | NULL    |       |
#tidept | varchar(2)    | NO   |     | NULL    |       |
#tidesc | varchar(40)   | NO   |     | NULL    |       |
#tidth  | decimal(19,2) | NO   |     | NULL    |       |
#tiemp  | int(11)       | NO   |     | NULL    |       |
#tigl   | decimal(19,2) | NO   |     | NULL    |       |
#tioth  | decimal(19,2) | NO   |     | NULL    |       |
#tiplce | varchar(1)    | NO   |     | NULL    |       |
#tirgh  | decimal(19,2) | NO   |     | NULL    |       |
#tisdpt | varchar(2)    | NO   |     | NULL    |       |
#tientm | decimal(19,2) | NO   |     | NULL    |       |
#titmto | decimal(19,2) | NO   |     | NULL    |       |

