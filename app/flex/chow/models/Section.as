package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="sections")]
  [Bindable]
  public class Section extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var showPagedArticles:Boolean = false;

    public var articlesPerPage:int = 0;

    public var layoutName:String = "";

    public var template:String = "";

    public var siteId:int = 0;

    public var path:String = "";

    public var articlesCount:int = 0;

    public var archivePath:String = "";

    public var archiveTemplate:String = "";

    public var position:int = 0;

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public function Section() {
      super(LABEL);
    }
  }
}
