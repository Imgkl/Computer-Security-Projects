.class public Lcom/eventgenie/android/utils/social/rss/RssFeedParser;
.super Lcom/eventgenie/android/utils/social/rss/BaseRssParser;
.source "RssFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;,
        Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseHandler;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/eventgenie/android/utils/social/rss/RssFeedParser;


# instance fields
.field private final mHttp:Lcom/github/ignition/support/http/IgnitedHttp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->sInstance:Lcom/eventgenie/android/utils/social/rss/RssFeedParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/eventgenie/android/utils/social/rss/BaseRssParser;-><init>()V

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpClient(Landroid/content/Context;Z)Lcom/github/ignition/support/http/IgnitedHttp;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->mHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/utils/social/rss/RssFeedParser;Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/rss/RssChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/rss/RssFeedParser;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "x2"    # Lcom/eventgenie/android/utils/social/rss/RssChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->parseFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/rss/RssChannel;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->parseFeedResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;)V

    return-void
.end method

.method private static executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseHandler;)V
    .locals 3
    .param p0, "get"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .param p1, "handler"    # Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-interface {p0}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v1

    .line 200
    .local v1, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v1}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v2

    invoke-static {p0, v2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-static {v1}, Lcom/genie_connect/android/net/providers/NetworkBase;->getResponseBody(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 202
    .local v0, "in":Ljava/io/InputStream;
    invoke-interface {p1, v0}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseHandler;->handleResponse(Ljava/io/InputStream;)V

    .line 204
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public static get()Lcom/eventgenie/android/utils/social/rss/RssFeedParser;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->sInstance:Lcom/eventgenie/android/utils/social/rss/RssFeedParser;

    return-object v0
.end method

.method private parseFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/rss/RssChannel;)V
    .locals 10
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "feed"    # Lcom/eventgenie/android/utils/social/rss/RssChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    .line 151
    new-instance v3, Lcom/eventgenie/android/utils/social/rss/RssItemParser;

    invoke-direct {v3}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;-><init>()V

    .line 153
    .local v3, "itemParser":Lcom/eventgenie/android/utils/social/rss/RssItemParser;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 155
    .local v0, "depth":I
    invoke-virtual {p2}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->init()V

    .line 157
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "eventType":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_8

    :cond_1
    if-eq v1, v8, :cond_8

    .line 159
    if-ne v1, v9, :cond_0

    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    const-string v5, "link"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 169
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    const-string v5, "description"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_4
    const-string v5, "item"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 176
    invoke-virtual {v3, p1}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/eventgenie/android/utils/social/rss/RssItem;

    move-result-object v2

    .line 177
    .local v2, "item":Lcom/eventgenie/android/utils/social/rss/RssItem;
    invoke-virtual {p2, v2}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->add(Lcom/eventgenie/android/utils/social/rss/RssItem;)V

    goto :goto_0

    .line 178
    .end local v2    # "item":Lcom/eventgenie/android/utils/social/rss/RssItem;
    :cond_5
    const-string v5, "image"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 179
    invoke-static {p2, p1}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->parseFeedImageTag(Lcom/eventgenie/android/utils/social/rss/RssChannel;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 180
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "group"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 183
    :goto_1
    if-eq v1, v8, :cond_0

    .line 184
    if-ne v1, v9, :cond_7

    .line 186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "thumbnail"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 187
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 196
    .end local v4    # "name":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private static parseFeedImageTag(Lcom/eventgenie/android/utils/social/rss/RssChannel;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p0, "feed"    # Lcom/eventgenie/android/utils/social/rss/RssChannel;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 218
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 220
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "eventType":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3

    :cond_1
    if-eq v1, v5, :cond_3

    .line 221
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 227
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->setThumbnailUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parseFeedResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "responseParser"    # Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 236
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 238
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v6, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    .local v6, "ubsi":Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;
    invoke-virtual {v6}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->getBOM()Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    move-result-object v7

    sget-object v8, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->NONE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    if-eq v7, v8, :cond_0

    .line 241
    invoke-virtual {v6}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->skipBOM()Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;

    .line 244
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 245
    .local v2, "isr":Ljava/io/InputStreamReader;
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 248
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v9, :cond_2

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 250
    :cond_2
    if-eq v5, v9, :cond_3

    .line 251
    new-instance v7, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": No start tag found!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "type":I
    .end local v6    # "ubsi":Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    const-string v7, "Could not parse the response"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 264
    throw v1

    .line 254
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "type":I
    .restart local v6    # "ubsi":Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "name":Ljava/lang/String;
    const-string v7, "rss"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "RDF"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 256
    :cond_4
    invoke-interface {p1, v4}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 266
    return-void

    .line 258
    :cond_5
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong start tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public getFeed(Ljava/lang/String;Landroid/content/Context;Z)Lcom/eventgenie/android/utils/social/rss/RssChannel;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "forceCache"    # Z

    .prologue
    const/4 v3, 0x1

    .line 68
    new-instance v1, Lcom/eventgenie/android/utils/social/rss/RssChannel;

    invoke-direct {v1}, Lcom/eventgenie/android/utils/social/rss/RssChannel;-><init>()V

    .line 70
    .local v1, "feed":Lcom/eventgenie/android/utils/social/rss/RssChannel;
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    const-string v4, "^ RSS: Feed url is empty!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-object v1

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/UrlUtils;->sanitiseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    if-eqz p3, :cond_3

    .line 78
    .local v3, "useCache":Z
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ RSS: opening feed \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Cached? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->mHttp:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v4, p1, v3}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v2

    .line 83
    .local v2, "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    invoke-interface {v2}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 85
    invoke-interface {v2}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    const-string v5, "USER-AGENT"

    invoke-static {p2}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getChromeBrowserUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v2}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    const-string v5, "Accept"

    const-string v6, "*/*"

    invoke-interface {v4, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    new-instance v4, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;

    invoke-direct {v4, p0, v1}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;-><init>(Lcom/eventgenie/android/utils/social/rss/RssFeedParser;Lcom/eventgenie/android/utils/social/rss/RssChannel;)V

    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 108
    .end local v2    # "get":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ RSS: IllegalArgumentException: Could not parse feed for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "useCache":Z
    :cond_3
    invoke-static {p2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 110
    .restart local v3    # "useCache":Z
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ RSS: IOException: Could not parse feed for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ RSS: Exception: Could not parse feed for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
