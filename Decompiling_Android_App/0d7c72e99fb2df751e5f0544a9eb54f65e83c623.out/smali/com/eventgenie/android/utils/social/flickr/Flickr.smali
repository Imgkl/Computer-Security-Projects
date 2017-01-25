.class public Lcom/eventgenie/android/utils/social/flickr/Flickr;
.super Ljava/lang/Object;
.source "Flickr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;,
        Lcom/eventgenie/android/utils/social/flickr/Flickr$User;,
        Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;,
        Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;,
        Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;,
        Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;,
        Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;,
        Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;,
        Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    }
.end annotation


# static fields
.field private static final API_FEED_URL:Ljava/lang/String; = "/services/feeds/photos_public.gne"

.field private static final API_KEY:Ljava/lang/String; = "03d727c92cd40852f948eceda50302f0"

.field private static final API_PEOPLE_FIND_BY_USERNAME:Ljava/lang/String; = "flickr.people.findByUsername"

.field private static final API_PEOPLE_GET_INFO:Ljava/lang/String; = "flickr.people.getInfo"

.field private static final API_PEOPLE_GET_LOCATION:Ljava/lang/String; = "flickr.photos.geo.getLocation"

.field private static final API_PEOPLE_GET_PUBLIC_PHOTOS:Ljava/lang/String; = "flickr.people.getPublicPhotos"

.field private static final API_PHOTOSETS_GET_LIST:Ljava/lang/String; = "flickr.photosets.getList"

.field private static final API_PHOTOSETS_GET_PHOTOS:Ljava/lang/String; = "flickr.photosets.getPhotos"

.field private static final API_REST_HOST:Ljava/lang/String; = "api.flickr.com"

.field private static final API_REST_URL:Ljava/lang/String; = "/services/rest/"

.field private static final BUDDY_ICON_URL:Ljava/lang/String; = "http://farm%s.static.flickr.com/%s/buddyicons/%s.jpg"

.field private static final DEFAULT_BUDDY_ICON_URL:Ljava/lang/String; = "https://www.flickr.com/images/buddyicon.jpg"

.field private static final FLAG_DECODE_PHOTO_STREAM_WITH_SKIA:Z = false

.field private static final IO_BUFFER_SIZE:I = 0x1000

.field private static final PARAM_API_KEY:Ljava/lang/String; = "api_key"

.field private static final PARAM_EXTRAS:Ljava/lang/String; = "extras"

.field private static final PARAM_FEED_FORMAT:Ljava/lang/String; = "format"

.field private static final PARAM_FEED_ID:Ljava/lang/String; = "id"

.field private static final PARAM_METHOD:Ljava/lang/String; = "method"

.field private static final PARAM_PAGE:Ljava/lang/String; = "page"

.field private static final PARAM_PER_PAGE:Ljava/lang/String; = "per_page"

.field private static final PARAM_PHOTOSET_ID:Ljava/lang/String; = "photoset_id"

.field private static final PARAM_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field private static final PARAM_USERID:Ljava/lang/String; = "user_id"

.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"

.field private static final PHOTOPAGE_DOMAIN:Ljava/lang/String; = "http://www.flickr.com/photos/"

.field private static final PHOTOPAGE_DOMAIN_M:Ljava/lang/String; = "http://m.flickr.com/#/photos/"

.field private static final PHOTO_IMAGE_URL:Ljava/lang/String; = "http://farm%s.static.flickr.com/%s/%s_%s%s.jpg"

.field private static final RESPONSE_ATTR_DATE_TAKEN:Ljava/lang/String; = "datetaken"

.field private static final RESPONSE_ATTR_FARM:Ljava/lang/String; = "farm"

.field private static final RESPONSE_ATTR_ICONFARM:Ljava/lang/String; = "iconfarm"

.field private static final RESPONSE_ATTR_ICONSERVER:Ljava/lang/String; = "iconserver"

.field private static final RESPONSE_ATTR_ID:Ljava/lang/String; = "id"

.field private static final RESPONSE_ATTR_ISPRO:Ljava/lang/String; = "ispro"

.field private static final RESPONSE_ATTR_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final RESPONSE_ATTR_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final RESPONSE_ATTR_NSID:Ljava/lang/String; = "nsid"

.field private static final RESPONSE_ATTR_OWNER:Ljava/lang/String; = "owner"

.field private static final RESPONSE_ATTR_PAGE:Ljava/lang/String; = "page"

.field private static final RESPONSE_ATTR_PAGES:Ljava/lang/String; = "pages"

.field private static final RESPONSE_ATTR_SECRET:Ljava/lang/String; = "secret"

.field private static final RESPONSE_ATTR_SERVER:Ljava/lang/String; = "server"

.field private static final RESPONSE_ATTR_STAT:Ljava/lang/String; = "stat"

.field private static final RESPONSE_ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final RESPONSE_STATUS_OK:Ljava/lang/String; = "ok"

.field private static final RESPONSE_TAG_FEED:Ljava/lang/String; = "feed"

.field private static final RESPONSE_TAG_LOCATION:Ljava/lang/String; = "location"

.field private static final RESPONSE_TAG_MOBILEURL:Ljava/lang/String; = "mobileurl"

.field private static final RESPONSE_TAG_PERSON:Ljava/lang/String; = "person"

.field private static final RESPONSE_TAG_PHOTO:Ljava/lang/String; = "photo"

.field private static final RESPONSE_TAG_PHOTOS:Ljava/lang/String; = "photos"

.field private static final RESPONSE_TAG_PHOTOSURL:Ljava/lang/String; = "photosurl"

.field private static final RESPONSE_TAG_PROFILEURL:Ljava/lang/String; = "profileurl"

.field private static final RESPONSE_TAG_REALNAME:Ljava/lang/String; = "realname"

.field private static final RESPONSE_TAG_RSP:Ljava/lang/String; = "rsp"

.field private static final RESPONSE_TAG_UPDATED:Ljava/lang/String; = "updated"

.field private static final RESPONSE_TAG_USER:Ljava/lang/String; = "user"

.field private static final RESPONSE_TAG_USERNAME:Ljava/lang/String; = "username"

.field private static final VALUE_DEFAULT_EXTRAS:Ljava/lang/String; = "date_taken"

.field private static final VALUE_DEFAULT_FORMAT:Ljava/lang/String; = "atom"

.field private static final sInstance:Lcom/eventgenie/android/utils/social/flickr/Flickr;


# instance fields
.field private final RESPONSE_ATTR_PHOTOS:Ljava/lang/String;

.field private final RESPONSE_ATTR_PRIMARY:Ljava/lang/String;

.field private final RESPONSE_TAG_PHOTOSET:Ljava/lang/String;

.field private final RESPONSE_TAG_PHOTOSETS:Ljava/lang/String;

.field private final RESPONSE_TAG_TITLE:Ljava/lang/String;

.field private final mClient:Lorg/apache/http/client/HttpClient;

.field private final mHttp:Lcom/github/ignition/support/http/IgnitedHttp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->sInstance:Lcom/eventgenie/android/utils/social/flickr/Flickr;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-string v3, "photosets"

    iput-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->RESPONSE_TAG_PHOTOSETS:Ljava/lang/String;

    .line 166
    const-string v3, "photoset"

    iput-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->RESPONSE_TAG_PHOTOSET:Ljava/lang/String;

    .line 168
    const-string v3, "photos"

    iput-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->RESPONSE_ATTR_PHOTOS:Ljava/lang/String;

    .line 170
    const-string/jumbo v3, "title"

    iput-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->RESPONSE_TAG_TITLE:Ljava/lang/String;

    .line 172
    const-string v3, "primary"

    iput-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->RESPONSE_ATTR_PRIMARY:Ljava/lang/String;

    .line 176
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 177
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 178
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 180
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 181
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 183
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 186
    .local v0, "manager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mClient:Lorg/apache/http/client/HttpClient;

    .line 187
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpClient(Landroid/content/Context;Z)Lcom/github/ignition/support/http/IgnitedHttp;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->parseUser(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->parseResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->parseFeedResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V

    return-void
.end method

.method static synthetic access$400(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->parsePhotoLocation(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;)V

    return-void
.end method

.method static synthetic access$4100(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$500(Lcom/eventgenie/android/utils/social/flickr/Flickr;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "x2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->parsePhotosets(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/eventgenie/android/utils/social/flickr/Flickr;Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "x2"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->parsePhotos(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    return-void
.end method

.method static synthetic access$800(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->parseUserInfo(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;)V

    return-void
.end method

.method static synthetic access$900(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->parseUpdated(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method private static buildGetMethod(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 4
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 648
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 649
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "/services/rest/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "api_key"

    const-string v3, "03d727c92cd40852f948eceda50302f0"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 650
    const-string v1, "method"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 651
    return-object v0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 667
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 668
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 670
    :cond_0
    return-void
.end method

.method private executeRequest(Lorg/apache/http/client/methods/HttpGet;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V
    .locals 7
    .param p1, "get"    # Lorg/apache/http/client/methods/HttpGet;
    .param p2, "handler"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v4, "api.flickr.com"

    const/16 v5, 0x50

    const-string v6, "https"

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    .local v1, "host":Lorg/apache/http/HttpHost;
    :try_start_0
    iget-object v4, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v1, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 233
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 234
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 236
    .local v2, "in":Ljava/io/InputStream;
    invoke-interface {p2, v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;->handleResponse(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 243
    :cond_1
    return-void

    .line 239
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 240
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v4
.end method

.method private static executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V
    .locals 3
    .param p0, "get"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .param p1, "handler"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-interface {p0}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v1

    .line 673
    .local v1, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v1}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v2

    invoke-static {p0, v2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    invoke-static {v1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getResponseBody(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 675
    .local v0, "in":Ljava/io/InputStream;
    invoke-interface {p1, v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;->handleResponse(Ljava/io/InputStream;)V

    .line 677
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public static get()Lcom/eventgenie/android/utils/social/flickr/Flickr;
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->sInstance:Lcom/eventgenie/android/utils/social/flickr/Flickr;

    return-object v0
.end method

.method private static parseFeedResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "responseParser"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 696
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 698
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 701
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v6, :cond_1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 706
    :cond_1
    if-eq v4, v6, :cond_2

    .line 707
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": No start tag found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v4    # "type":I
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Could not parser the response"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 720
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 721
    throw v1

    .line 711
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v4    # "type":I
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "name":Ljava/lang/String;
    const-string v5, "feed"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 713
    invoke-interface {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 723
    return-void

    .line 715
    :cond_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong start tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static parsePhotoLocation(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;)V
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "location"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 729
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 731
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 735
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, "name":Ljava/lang/String;
    const-string v4, "location"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 738
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "latitude"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->mLatitude:F
    invoke-static {p1, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->access$2902(Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;F)F

    .line 740
    const/4 v4, 0x0

    const-string v5, "longitude"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->mLongitude:F
    invoke-static {p1, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;->access$3002(Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Could not parse lat/lon"

    invoke-direct {v4, v5, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 747
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parsePhotos(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "photos"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 543
    const/4 v5, 0x0

    .line 544
    .local v5, "parseFormat":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 546
    .local v3, "outputFormat":Ljava/text/SimpleDateFormat;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 548
    .local v0, "depth":I
    const/4 v4, 0x0

    .line 550
    .local v4, "owner":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_6

    :cond_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    .line 552
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 556
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "name":Ljava/lang/String;
    const-string v8, "photos"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "photoset"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 558
    :cond_2
    const-string v8, "page"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPage:I
    invoke-static {p2, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->access$1102(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;I)I

    .line 559
    const-string v8, "pages"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPageCount:I
    invoke-static {p2, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->access$1202(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;I)I

    .line 561
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPhotos:Ljava/util/List;
    invoke-static {p2, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->access$1302(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;Ljava/util/List;)Ljava/util/List;

    .line 563
    const-string v8, "photoset"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 564
    const-string v8, "owner"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 567
    :cond_3
    const-string v8, "photo"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 568
    new-instance v6, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    invoke-direct {v6, v9}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$1;)V

    .line 569
    .local v6, "photo":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    const-string v8, "id"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$202(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;

    .line 570
    const-string v8, "secret"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mSecret:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$1502(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;

    .line 571
    const-string v8, "server"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mServer:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$1602(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;

    .line 572
    const-string v8, "farm"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mFarm:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$1702(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    const-string/jumbo v8, "title"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mTitle:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$1802(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    const-string v8, "datetaken"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$1902(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    if-eqz v4, :cond_5

    .line 577
    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mOwner:Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$2002(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    :goto_1
    if-nez v5, :cond_4

    .line 583
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "parseFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 584
    .restart local v5    # "parseFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "outputFormat":Ljava/text/SimpleDateFormat;
    const-string v8, "MMMM d, yyyy"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v3    # "outputFormat":Ljava/text/SimpleDateFormat;
    :cond_4
    :try_start_0
    # getter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;
    invoke-static {v6}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$1900(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$1902(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_2
    # invokes: Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->add(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)V
    invoke-static {p2, v6}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->access$2100(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)V

    goto/16 :goto_0

    .line 579
    :cond_5
    const-string v8, "owner"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mOwner:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$2002(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Ljava/text/ParseException;
    const-string v8, "^ FLICKR: Could not parse photo date"

    invoke-static {v8, v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 596
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "photo":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    :cond_6
    return-void
.end method

.method private parsePhotosets(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;>;"
    const/4 v6, 0x0

    .line 603
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 605
    .local v0, "depth":I
    const/4 v2, 0x0

    .line 607
    .local v2, "set":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 609
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 613
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "name":Ljava/lang/String;
    const-string v4, "photosets"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 617
    const-string v4, "photoset"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 618
    new-instance v2, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;

    .end local v2    # "set":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    invoke-direct {v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;-><init>()V

    .line 619
    .restart local v2    # "set":Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    const-string v4, "id"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mId:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->access$2202(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    const-string v4, "photos"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mPhotoCount:I
    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->access$2302(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;I)I

    .line 621
    const-string v4, "primary"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mPrimaryId:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->access$2402(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    const-string v4, "secret"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mSecret:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->access$2502(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;

    .line 623
    const-string v4, "server"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mServer:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->access$2602(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    const-string v4, "farm"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mFarm:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->access$2702(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 626
    :cond_2
    const-string/jumbo v4, "title"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 628
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mTitle:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->access$2802(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 635
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static parseResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "responseParser"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 759
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 761
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 764
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v7, :cond_1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 769
    :cond_1
    if-eq v4, v7, :cond_2

    .line 770
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": No start tag found!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v4    # "type":I
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    const-string v6, "Could not parser the response"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 786
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 787
    throw v1

    .line 774
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v4    # "type":I
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "name":Ljava/lang/String;
    const-string v6, "rsp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 776
    const/4 v6, 0x0

    const-string v7, "stat"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 777
    .local v5, "value":Ljava/lang/String;
    const-string v6, "ok"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 778
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 782
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 789
    return-void
.end method

.method private static parseUpdated(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Calendar;)Z
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "reference"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 798
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_2

    :cond_1
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 800
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 804
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "updated"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 806
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 807
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 809
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x54

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x5a

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, "text":Ljava/lang/String;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 811
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 813
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 821
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 814
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static parseUser(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)V
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "userId"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 829
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 831
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 835
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "nsid"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    goto :goto_0

    .line 840
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static parseUserInfo(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;)V
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "info"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 845
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 847
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_8

    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    .line 849
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 853
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, "name":Ljava/lang/String;
    const-string v3, "person"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 855
    const-string v3, "1"

    const-string v4, "ispro"

    invoke-interface {p0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIsPro:Z
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3102(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Z)Z

    .line 856
    const-string v3, "iconserver"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconServer:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3202(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 857
    const-string v3, "iconfarm"

    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconFarm:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3302(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 858
    :cond_2
    const-string/jumbo v3, "username"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 859
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 860
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mUserName:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3402(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 862
    :cond_3
    const-string v3, "realname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 863
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 864
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mRealName:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3502(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 866
    :cond_4
    const-string v3, "location"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 867
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 868
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mLocation:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3602(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 870
    :cond_5
    const-string v3, "photosurl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 871
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 872
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mPhotosUrl:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3702(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 874
    :cond_6
    const-string v3, "profileurl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 875
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 876
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mProfileUrl:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3802(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 878
    :cond_7
    const-string v3, "mobileurl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 880
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mMobileUrl:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->access$3902(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 884
    .end local v1    # "name":Ljava/lang/String;
    :cond_8
    return-void
.end method


# virtual methods
.method downloadPhoto(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "photo"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .param p2, "size"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;
    .param p3, "destination"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x1000

    invoke-direct {v2, p3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 201
    .local v2, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {p1, p2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->getUrl(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "url":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    const/4 v0, 0x0

    .line 206
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-object v5, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 207
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 208
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 209
    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 210
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    if-eqz v0, :cond_1

    .line 214
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 217
    :cond_1
    return-void

    .line 213
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v5
.end method

.method findByUserName(Ljava/lang/String;Landroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    .locals 9
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "forceCache"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 263
    const-string v6, "flickr.people.findByUsername"

    invoke-static {v6}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->buildGetMethod(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 264
    .local v2, "uri":Landroid/net/Uri$Builder;
    const-string/jumbo v6, "username"

    invoke-virtual {v2, v6, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 267
    if-eqz p3, :cond_1

    move v3, v5

    .line 268
    .local v3, "useCache":Z
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://api.flickr.com"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 270
    .local v1, "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    new-array v4, v5, [Ljava/lang/String;

    .line 273
    .local v4, "userId":[Ljava/lang/String;
    :try_start_0
    new-instance v5, Lcom/eventgenie/android/utils/social/flickr/Flickr$1;

    invoke-direct {v5, p0, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$1;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;[Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V

    .line 285
    const/4 v5, 0x0

    aget-object v5, v4, v5

    if-eqz v5, :cond_2

    .line 286
    new-instance v5, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-direct {v5, v6}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    return-object v5

    .line 267
    .end local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v3    # "useCache":Z
    .end local v4    # "userId":[Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v5

    goto :goto_0

    .line 288
    .restart local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v3    # "useCache":Z
    .restart local v4    # "userId":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ FLICKR: Could not find the user with name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method getLocation(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    .locals 8
    .param p1, "photo"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 307
    const-string v5, "flickr.photos.geo.getLocation"

    invoke-static {v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->buildGetMethod(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 308
    .local v3, "uri":Landroid/net/Uri$Builder;
    const-string v5, "photo_id"

    # getter for: Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;
    invoke-static {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->access$200(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 310
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;

    invoke-direct {v2, v7, v7, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;-><init>(FFLcom/eventgenie/android/utils/social/flickr/Flickr$1;)V

    .line 314
    .local v2, "location":Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    :try_start_0
    new-instance v5, Lcom/eventgenie/android/utils/social/flickr/Flickr$2;

    invoke-direct {v5, p0, v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$2;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;)V

    invoke-direct {p0, v1, v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->executeRequest(Lorg/apache/http/client/methods/HttpGet;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v2    # "location":Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    :goto_0
    return-object v2

    .line 327
    .restart local v2    # "location":Lcom/eventgenie/android/utils/social/flickr/Flickr$Location;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ FLICKR: Could not find location for photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    move-object v2, v4

    .line 331
    goto :goto_0
.end method

.method public getPhotosets(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "user"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "forceCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$User;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 336
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;->getId()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "nsid":Ljava/lang/String;
    const-string v6, "flickr.photosets.getList"

    invoke-static {v6}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->buildGetMethod(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 338
    .local v4, "uri":Landroid/net/Uri$Builder;
    const-string/jumbo v6, "user_id"

    invoke-virtual {v4, v6, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 341
    if-eqz p3, :cond_1

    .line 342
    .local v5, "useCache":Z
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://api.flickr.com"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 345
    .local v1, "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, "sets":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;>;"
    new-instance v6, Lcom/eventgenie/android/utils/social/flickr/Flickr$3;

    invoke-direct {v6, p0, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr$3;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;Ljava/util/List;)V

    invoke-static {v1, v6}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v3    # "sets":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;>;"
    :goto_1
    return-object v3

    .line 341
    .end local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v5    # "useCache":Z
    :cond_1
    invoke-static {p2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 361
    .restart local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v5    # "useCache":Z
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ FLICKR: Could not find photosets for user with id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 364
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getPublicPhotos(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .locals 8
    .param p1, "user"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    .param p2, "perPage"    # I
    .param p3, "page"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "forceCache"    # Z

    .prologue
    const/4 v4, 0x1

    .line 422
    const-string v5, "flickr.people.getPublicPhotos"

    invoke-static {v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->buildGetMethod(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 423
    .local v3, "uri":Landroid/net/Uri$Builder;
    const-string/jumbo v5, "user_id"

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 424
    const-string v5, "per_page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 425
    const-string v5, "page"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 426
    const-string v5, "extras"

    const-string v6, "date_taken"

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 429
    if-eqz p5, :cond_1

    .line 430
    .local v4, "useCache":Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://api.flickr.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 432
    .local v1, "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    new-instance v2, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;-><init>()V

    .line 435
    .local v2, "photos":Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    :try_start_0
    new-instance v5, Lcom/eventgenie/android/utils/social/flickr/Flickr$5;

    invoke-direct {v5, p0, v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$5;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    invoke-static {v1, v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_1
    return-object v2

    .line 429
    .end local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v2    # "photos":Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .end local v4    # "useCache":Z
    :cond_1
    invoke-static {p4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 447
    .restart local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v2    # "photos":Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .restart local v4    # "useCache":Z
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ FLICKR: Could not find photos for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPublicPhotos(Ljava/lang/String;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .locals 8
    .param p1, "photosetId"    # Ljava/lang/String;
    .param p2, "perPage"    # I
    .param p3, "page"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "forceCache"    # Z

    .prologue
    const/4 v4, 0x1

    .line 369
    const-string v5, "flickr.photosets.getPhotos"

    invoke-static {v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->buildGetMethod(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 370
    .local v3, "uri":Landroid/net/Uri$Builder;
    const-string v5, "photoset_id"

    invoke-virtual {v3, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 371
    const-string v5, "per_page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 372
    const-string v5, "page"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 373
    const-string v5, "extras"

    const-string v6, "date_taken"

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 376
    if-eqz p5, :cond_1

    .line 377
    .local v4, "useCache":Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://api.flickr.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 379
    .local v1, "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    new-instance v2, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;-><init>()V

    .line 382
    .local v2, "photos":Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    :try_start_0
    new-instance v5, Lcom/eventgenie/android/utils/social/flickr/Flickr$4;

    invoke-direct {v5, p0, v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$4;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    invoke-static {v1, v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_1
    return-object v2

    .line 376
    .end local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v2    # "photos":Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .end local v4    # "useCache":Z
    :cond_1
    invoke-static {p4}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 394
    .restart local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v2    # "photos":Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .restart local v4    # "useCache":Z
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ FLICKR: Could not find photos for set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getUserInfo(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;Landroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .locals 10
    .param p1, "user"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "forceCache"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 469
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;->getId()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "nsid":Ljava/lang/String;
    const-string v7, "flickr.people.getInfo"

    invoke-static {v7}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->buildGetMethod(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 471
    .local v4, "uri":Landroid/net/Uri$Builder;
    const-string/jumbo v7, "user_id"

    invoke-virtual {v4, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 474
    if-eqz p3, :cond_1

    .line 475
    .local v5, "useCache":Z
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr;->mHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://api.flickr.com"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 478
    .local v1, "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :try_start_0
    new-instance v2, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v7}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;-><init>(Ljava/lang/String;Lcom/eventgenie/android/utils/social/flickr/Flickr$1;)V

    .line 480
    .local v2, "info":Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    new-instance v7, Lcom/eventgenie/android/utils/social/flickr/Flickr$6;

    invoke-direct {v7, p0, v2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$6;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;)V

    invoke-static {v1, v7}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v2    # "info":Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    :goto_1
    return-object v2

    .line 474
    .end local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v5    # "useCache":Z
    :cond_1
    invoke-static {p2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 494
    .restart local v1    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v5    # "useCache":Z
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ FLICKR: Could not find the user with id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    move-object v2, v6

    .line 498
    goto :goto_1
.end method

.method hasUpdates(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;Ljava/util/Calendar;)Z
    .locals 6
    .param p1, "user"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    .param p2, "reference"    # Ljava/util/Calendar;

    .prologue
    .line 511
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 512
    .local v3, "uri":Landroid/net/Uri$Builder;
    const-string v4, "/services/feeds/photos_public.gne"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 513
    const-string v4, "id"

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 514
    const-string v4, "format"

    const-string v5, "atom"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 516
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 517
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    const/4 v4, 0x1

    new-array v2, v4, [Z

    .line 520
    .local v2, "updated":[Z
    :try_start_0
    new-instance v4, Lcom/eventgenie/android/utils/social/flickr/Flickr$7;

    invoke-direct {v4, p0, v2, p2}, Lcom/eventgenie/android/utils/social/flickr/Flickr$7;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;[ZLjava/util/Calendar;)V

    invoke-direct {p0, v1, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->executeRequest(Lorg/apache/http/client/methods/HttpGet;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    return v4

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ FLICKR: Could not find feed for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method
