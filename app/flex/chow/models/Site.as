package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="sites")]
  [Bindable]
  public class Site extends RxModel {
    public static const LABEL:String = "title";

    public var title:String = "";

    public var subtitle:String = "";

    public var email:String = "";

    public var pingUrls:String = "";

    public var articlesPerPage:int = 0;

    public var host:String = "";

    public var akismetKey:String = "";

    public var akismetUrl:String = "";

    public var approveComments:Boolean = false;

    public var commentAge:int = 0;

    public var timezone:String = "";

    public var filter:String = "";

    public var permalinkStyle:String = "";

    public var searchPath:String = "";

    public var tagPath:String = "";

    public var tagLayout:String = "";

    public var currentThemePath:String = "";

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public function Site() {
      super(LABEL);
    }
  }
}
