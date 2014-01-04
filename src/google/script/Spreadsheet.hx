package google.script;

import google.script.Charts;
import google.script.Forms;

//TODO
@:require(googlescript)
typedef Range = Dynamic;

@:require(googlescript)
typedef PageProtection = Dynamic;

@:require(googlescript)
@:native("Sheet")
extern class Sheet {
	function activate() : Sheet;
	function appendRow( rowContents : Array<Dynamic> ) : Sheet;
	function autoResizeColumn( columnPosition : Int ) : Sheet;
	function clear() : Sheet;
	function clearContents() : Sheet;
	function clearFormats() : Sheet;
	function clearNotes() : Sheet;
	function copyTo( spreadsheet : Spreadsheet ) : Sheet;
	function deleteColumn( columnPosition : Int ) : Sheet;
	function deleteColumns( columnPosition : Int, howMany : Int  ) : Sheet;
	function deleteRow( rowPosition : Int ) : Sheet;
	function deleteRows( rowPosition : Int, howMany : Int  ) : Sheet;
	function getActiveCell() : Range;
	function getActiveRange() : Range;
	function getCharts() : Array<EmbeddedChart>;
	function getColumnWidth( columnPosition : Int ) : Int;
	function getDataRange() : Range;
	function getFrozenColumns() : Int;
	function getFrozenRows() : Int;
	function getIndex() : Int;
	function getLastColumn() : Int;
	function getLastRow() : Int;
	function getMaxColumns() : Int;
	function getMaxRows() : Int;
	function getName() : String;
	function getParent() : Spreadsheet;
	@:overload(function(a1Notation:String):Range{})
	function getRange( row : Int, column : Int, ?numRows : Int, ?numColumns : Int ) : Range;
	function getRowHeight( rowPosition : Int ) : Int;
	function getSheetId() : Int;
	function getSheetName() : String;
	function getSheetProtection() : PageProtection;
	function getSheetValues( startRow : Int, startColumn : Int, numRows : Int, numColumns : Int ) : Array<Array<Dynamic>>;
	function hideColumn( column : Range ) : Void;
	function hideColumns( columnIndex : Int, ?numColumns : Int ) : Void;
	function hideRow( row : Range ) : Void;
	function hideRows( rowIndex : Int, ?numRows : Int ) : Void;
	function hideSheet( rowIndex : Int, ?numRows : Int ) : Sheet;
	function insertChart( chart : EmbeddedChart ) : Void;
	function insertColumnAfter( afterPosition : Int ) : Sheet;
	function insertColumns( columnIndex : Int ) : Sheet;
	function insertColumnBefore( beforePosition : Int ) : Sheet;
	function insertColumnsAfter( afterPosition : Int, howMany : Int ) : Sheet;
	function insertColumnsBefore( beforePosition : Int, howMany : Int ) : Sheet;
	@:overload(function(url:String,column:Int,row:Int,offsetX:Int,offsetY:Int):Sheet{})
	function insertImage( url : String, column : Int, row : Int ) : Sheet;
	function insertRowBefore( beforePosition : Int ) : Sheet;
	function insertRows( rowIndex : Int, ?numRows : Int ) : Sheet;
	function insertRowsAfter( afterPosition : Int, howMany : Int ) : Sheet;
	function insertRowsBefore( beforePosition : Int, howMany : Int ) : Sheet;
	function isSheetHidden() : Bool;
	function newChart() : EmbeddedChartBuilder;
	function removeChart( chart : EmbeddedChart ) : EmbeddedChartBuilder;
	function setActiveRange( range : Range ) : Range;
	@:overload(function(a1Notation:String):Range{})
	function setActiveSelection( range : Range ) : Range;
	function setColumnWidth( columnPosition : Int, width : Int ) : Sheet;
	function setFrozenRows( rows : Int ) : Sheet;
	function setName( name : String ) : Sheet;
	function setColumnHeight( rowPosition : Int, height : Int ) : Sheet;
	function setSheetProtection( permissions : PageProtection ) : Sheet;
	function showColumns( columnIndex : Int, numColumns : Int ) : Sheet;
	function showRows( rowIndex : Int,?numRows : Int ) : Sheet;
	function showSheet() : Sheet;
	function sort( columnPosition : Int, ?ascending : Bool ) : Sheet;
	function unhideColumn( column : Range ) : Sheet;
	function unhideRow( row : Range ) : Sheet;
	function updateChart( chart : EmbeddedChart ) : Sheet;
}

@:require(googlescript)
@:native("EmbeddedChart")
extern class EmbeddedChart {
	function getAs( contentType : String ) : Blob;
	function getBlob() : Blob;
	function getContainerInfo() : ContainerInfo;
	function getId() : String;
	function getOptions() : ChartOptions;
	function getRanges() : Array<Range>;
	function getType() : String;
	function modify() : EmbeddedChartBuilder;
	function setId( id : String ) : Chart;
}

@:require(googlescript)
@:native("EmbeddedChartBuilder")
extern class EmbeddedChartBuilder {
	function addRange( range : Range ) : EmbeddedChartBuilder;
	function asAreaChart() : EmbeddedAreaChartBuilder;
	function asBarChart() : EmbeddedBarChartBuilder;
	function asColumnChart() : EmbeddedColumnChartBuilder;
	function asLineChart() : EmbeddedLineChartBuilder;
	function asPieChart() : EmbeddedPieChartBuilder;
	function asScatterChart() : EmbeddedScatterChartBuilder;
	function asTableChart() : EmbeddedTableChartBuilder;
	function build() : EmbeddedChart;
	function getChartType() : ChartType;
	function getContainer() : ContainerInfo;
	function getRanges() : Array<Range>;
	function removeRange( range : Range ) : EmbeddedChartBuilder;
	function setChartType( type : ChartType ) : EmbeddedChartBuilder;
	function setOption( option : String, value : Dynamic ) : EmbeddedChartBuilder;
	function setPosition( anchorRowPos : Int, anchorColPos : Int, offsetX : Int, offsetY : Int ) : EmbeddedChartBuilder;
}

@:require(googlescript)
@:native("EmbeddedAreaChartBuilder")
extern class EmbeddedAreaChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedAreaChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedAreaChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedAreaChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedAreaChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedAreaChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedAreaChartBuilder;
	function setStacked() : EmbeddedAreaChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedAreaChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedAreaChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedAreaChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function useLogScale() : EmbeddedAreaChartBuilder;
}

@:require(googlescript)
@:native("EmbeddedBarChartBuilder")
extern class EmbeddedBarChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedBarChartBuilder;
	function reverseDirection() : EmbeddedBarChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedBarChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedBarChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedBarChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedBarChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedBarChartBuilder;
	function setStacked() : EmbeddedBarChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedBarChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedBarChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedBarChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function useLogScale() : EmbeddedBarChartBuilder;
}

@:require(googlescript)
@:native("EmbeddedColumnChartBuilder")
extern class EmbeddedColumnChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedColumnChartBuilder;
	function reverseDirection() : EmbeddedColumnChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedColumnChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedColumnChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedColumnChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedColumnChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedColumnChartBuilder;
	function setStacked() : EmbeddedColumnChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedColumnChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedColumnChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedColumnChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function useLogScale() : EmbeddedColumnChartBuilder;
}

@:require(googlescript)
@:native("EmbeddedLineChartBuilder")
extern class EmbeddedLineChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedLineChartBuilder;
	function reverseDirection() : EmbeddedLineChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedLineChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedLineChartBuilder;
	function setCurveStyle( curveStyle : CurveStyle ) : EmbeddedLineChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedLineChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedLineChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedLineChartBuilder;
	function setStacked() : EmbeddedLineChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedLineChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedLineChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedLineChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function useLogScale() : EmbeddedLineChartBuilder;
}

@:require(googlescript)
@:native("EmbeddedPieChartBuilder")
extern class EmbeddedPieChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedPieChartBuilder;
	function set3D() : EmbeddedPieChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedPieChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedPieChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedPieChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedPieChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedPieChartBuilder;
}

@:require(googlescript)
@:native("EmbeddedScatterChartBuilder")
extern class EmbeddedScatterChartBuilder extends EmbeddedChartBuilder {
	function setBackgroundColor( cssValue : String ) : EmbeddedScatterChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedScatterChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedScatterChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedScatterChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedScatterChartBuilder;
	function setStacked() : EmbeddedScatterChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedScatterChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedScatterChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedScatterChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function useLogScale() : EmbeddedScatterChartBuilder;
	
}

@:require(googlescript)
@:native("EmbeddedTableChartBuilder")
extern class EmbeddedTableChartBuilder extends EmbeddedChartBuilder {
	@:overload(function(pageSize:Int,?startPage:Int):EmbeddedTableChartBuilder{})
	function enablePaging( enablePaging : Bool ) : EmbeddedTableChartBuilder;
	function enableRtlTable( rtlEnabled : Bool ) : EmbeddedTableChartBuilder;
	function enableSorting( enableSorting : Bool ) : EmbeddedTableChartBuilder;
	function setFirstRowNumber( number : Int ) : EmbeddedTableChartBuilder;
	function setInitialSortingAscending( column : Int ) : EmbeddedTableChartBuilder;
	function setInitialSortingDescending( column : Int ) : EmbeddedTableChartBuilder;
	function showRowNumberColumn( showRowNumber : Bool ) : EmbeddedTableChartBuilder;
	function useAlternatingRowStyle( alternate : Bool ) : EmbeddedTableChartBuilder;
}

@:require(googlescript)
@:native("ContainerInfo")
extern class ContainerInfo {
	function getAnchorColumn() : Int;
	function getAnchorRow() : Int;
	function getOffsetX() : Int;
	function getOffsetY() : Int;
}

@:require(googlescript)
@:native("Spreadsheet")
extern class Spreadsheet {
	@:overload(function(user:User):Sheet{})
	function addEditor( emailAddress : String ) : Sheet;
	function addEditors( emailAddresses : Array<String> ) : Sheet;
	function addMenu( name : String, subMenus : Array<Dynamic> ) : Sheet;
	@:overload(function(user:User):Sheet{})
	function addViewer( emailAddress : String ) : Sheet;
	function addViewers( emailAddresses : Array<String> ) : Sheet;
	function appendRow( rowContents : Array<Dynamic> ) : Sheet;
	function autoResizeColumn( columnPosition : Int ) : Sheet;
	function copy( name : String ) : Spreadsheet;
	function deleteActiveSheet() : Sheet;
	function deleteColumn( columnPosition : Int ) : Sheet;
	function deleteColumns( columnPosition : Int, howMany : Int ) : Sheet;
	function deleteRow( rowPosition : Int ) : Sheet;
	function deleteRows( rowPosition : Int, howMany : Int ) : Sheet;
	function deleteSheet( sheet : Sheet ) : Sheet;
	function duplicateActiveSheet() : Sheet;
	function getActiveCell() : Range;
	function getActiveRange() : Range;
	static function getActiveSheet() : Sheet;
	function getColumnWidth( columnPosition : Int ) : Int;
	function getDataRange() : Range;
	function getEditors() : Array<User>;
	function getFormUrl() : String;
	function getFrozenColumns() : Int;
	function getFrozenRows() : Int;
	function getId() : String;
	function getLastColumn() : Int;
	function getLastRow() : Int;
	function getName() : String;
	function getNumSheets() : Int;
	function getOwner() : User;
	function getRange( a1Notation : String ) : Range;
	function getRangeByName( name : String ) : Range;
	function getRowHeight( rowPosition : Int ) : Int;
	function getSheetByName( name : String ) : Sheet;
	function getSheetId() : Int;
	function getSheetName() : String;
	function getSheetProtection() : PageProtection;
	function getSheetValues( startRow : Int, startColumn : Int, numRows : Int, numColumns : Int ) : Array<Array<Dynamic>>;
	function getSheets() : Array<Sheet>;
	function getSpreadsheetLocale() : String;
	function getSpreadsheetTimeZone() : String;
	function getUrl() : String;
	function getViewers() : Array<User>;
	function hideColumn( column : Range ) : Sheet;
	function hideRow( row : Range ) : Sheet;
	function insertColumnAfter( afterPosition : Int ) : Sheet;
	function insertColumnBefore( beforePosition : Int ) : Sheet;
	function insertColumnsAfter( afterPosition : Int, howMany : Int ) : Sheet;
	function insertColumnsBefore( beforePosition : Int, howMany : Int ) : Sheet;
	@:overload(function(url:String,column:Int,row:Int,offsetX:Int,offsetY:Int):Sheet{})
	function insertImage( url : String, column : Int, row : Int ) : Sheet;
	function insertRowAfter( afterPosition : Int ) : Sheet;
	function insertRowBefore( beforePosition : Int ) : Sheet;
	function insertRowsAfter( afterPosition : Int, howMany : Int ) : Sheet;
	function insertRowsBefore( beforePosition : Int, howMany : Int ) : Sheet;
	@:overload(function(sheetName:String,?sheetIndex:Int,?sheetOptions:Dynamic):Sheet{})
	@:overload(function(sheetName:String,?sheetIndex:Int):Sheet{})
	@:overload(function(options:Dynamic):Sheet{})
	@:overload(function(sheetIndex:Int):Sheet{})
	function insertSheet( sheetIndex : Int, ?options : Dynamic ) : Sheet;
	function isAnonymousView() : Bool;
	function isAnonymousWrite() : Bool;
	function isReadable() : Bool;
	function isWritable() : Bool;
	function moveActiveSheet( pos : Int ) : Sheet;
	@:overload(function(user:User):Sheet{})
	function removeEditor( emailAddress : String ) : Sheet;
	function removeMenu( name : String ) : Sheet;
	function removeNamedRange( name : String ) : Sheet;
	@:overload(function(user:User):Sheet{})
	function removeViewer( emailAddress : String ) : Sheet;
	function rename( newName : String ) : Sheet;
	function renameActiveSheet( newName : String ) : Sheet;
	function setActiveRange( range : Range ) : Range;
	@:overload(function(a1Notation:String):Range{})
	function setActiveSelection( range : Range ) : Range;
	function setActiveSheet( sheet : Sheet ) : Sheet;
	function setAnonymousAccess( anonymousReadAllowed : Bool, anonymousWriteAllowed : Bool ) : Sheet;
	function setColumnWidth( columnPosition : Int, width : Int ) : Sheet;
	function setFrozenColumns( columns : Int ) : Sheet;
	function setFrozenRows( rows : Int ) : Sheet;
	function setNamedRange( name : String, range : Range ) : Sheet;
	function setRowHeight( rowPosition : Int, height : Int ) : Sheet;
	function setSheetProtection( permissions : PageProtection ) : Sheet;
	function setSpreadsheetLocale( locale : String ) : Sheet;
	function setSpreadsheetTimeZone( timezone : String ) : Sheet;
	function show( userInterface : Dynamic ) : Sheet;
	function sort( columnPosition : Int, ?ascending : Bool ) : Sheet;
	function toast( msg : String, ?title : String, ?timeoutSeconds : Float ) : Sheet;
	function unhideColumn( column : Range ) : Sheet;
	function unhideRow( row : Range ) : Sheet;
	function updateMenu( name : String, subMenus : Array<Dynamic> ) : Sheet;
}
