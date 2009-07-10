package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="content_versions")]
  [Bindable]
  public class ContentVersion extends RxModel {
    public static const LABEL:String = "contentId";

    public var contentId:int = 0;

    public var version:int = 0;

    public var articleId:int = 0;

    public var userId:int = 0;

    public var title:String = "";

    public var permalink:String = "";

    public var excerpt:String = "";

    public var body:String = "";

    public var excerptHtml:String = "";

    public var bodyHtml:String = "";

    [DateTime]
    public var publishedAt:Date = new Date;

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public var author:String = "";

    public var authorUrl:String = "";

    public var authorEmail:String = "";

    public var authorIp:String = "";

    public var commentsCount:int = 0;

    public var updaterId:int = 0;

    public var versionedType:String = "";

    public var siteId:int = 0;

    public var approved:Boolean = false;

    public var commentAge:int = 0;

    public var filter:String = "";

    public var userAgent:String = "";

    public var referrer:String = "";

    public var assetsCount:int = 0;

    public function ContentVersion() {
      super(LABEL);
    }
  }
}
