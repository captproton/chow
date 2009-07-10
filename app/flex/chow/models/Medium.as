package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="media")]
  [Bindable]
  public class Medium extends RxModel {
    public static const LABEL:String = "contentType";

    public var contentType:String = "";

    public var filename:String = "";

    public var size:int = 0;

    public var parentId:int = 0;

    public var siteId:int = 0;

    public var title:String = "";

    public var userId:int = 0;

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    [Ignored]
    public var attachmentUrl:String;
    
    public function Medium() {
      super(LABEL);
    }
  }
}
