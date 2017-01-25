.class abstract Lcom/eventgenie/android/utils/social/rss/BaseRssParser;
.super Ljava/lang/Object;
.source "BaseRssParser.java"


# static fields
.field private static final MEDIA_NAMESPACE_INVALID:Ljava/lang/String; = "http://search.yahoo.com/mrss"

.field private static final MEDIA_NAMESPACE_VALID:Ljava/lang/String; = "http://search.yahoo.com/mrss/"

.field protected static final PHOTO_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/photos/2007"

.field protected static final RESPONSE_TAG_CHANNEL:Ljava/lang/String; = "channel"

.field protected static final RESPONSE_TAG_COMMENTS:Ljava/lang/String; = "comments"

.field protected static final RESPONSE_TAG_CONTENT:Ljava/lang/String; = "content"

.field protected static final RESPONSE_TAG_CONTENT_ENCODED:Ljava/lang/String; = "encoded"

.field protected static final RESPONSE_TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field protected static final RESPONSE_TAG_FEED:Ljava/lang/String; = "rss"

.field protected static final RESPONSE_TAG_FEED_ALT:Ljava/lang/String; = "RDF"

.field protected static final RESPONSE_TAG_GROUP:Ljava/lang/String; = "group"

.field protected static final RESPONSE_TAG_GUID:Ljava/lang/String; = "guid"

.field protected static final RESPONSE_TAG_IMAGE:Ljava/lang/String; = "image"

.field protected static final RESPONSE_TAG_ITEM:Ljava/lang/String; = "item"

.field protected static final RESPONSE_TAG_LINK:Ljava/lang/String; = "link"

.field protected static final RESPONSE_TAG_PUBDATE:Ljava/lang/String; = "pubDate"

.field protected static final RESPONSE_TAG_PUBDATE_ALT:Ljava/lang/String; = "date"

.field protected static final RESPONSE_TAG_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field protected static final RESPONSE_TAG_TITLE:Ljava/lang/String; = "title"

.field protected static final RESPONSE_TAG_TYPE:Ljava/lang/String; = "type"

.field protected static final RESPONSE_TAG_URL:Ljava/lang/String; = "url"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAttributes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 70
    .local v0, "acount":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 72
    .local v1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 73
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "x":I
    :cond_0
    const/4 v1, 0x0

    .line 79
    .restart local v1    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v1
.end method

.method protected isMediaNamespace(Ljava/lang/String;)Z
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    const-string v2, "http://search.yahoo.com/mrss/"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string v2, "http://search.yahoo.com/mrss"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 91
    goto :goto_0
.end method
