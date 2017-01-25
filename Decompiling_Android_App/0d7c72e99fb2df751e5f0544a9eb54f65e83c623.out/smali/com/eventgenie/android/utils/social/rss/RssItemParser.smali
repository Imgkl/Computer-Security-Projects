.class Lcom/eventgenie/android/utils/social/rss/RssItemParser;
.super Lcom/eventgenie/android/utils/social/rss/BaseRssParser;
.source "RssItemParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/eventgenie/android/utils/social/rss/BaseRssParser;-><init>()V

    return-void
.end method


# virtual methods
.method parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/eventgenie/android/utils/social/rss/RssItem;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
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

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 48
    .local v1, "depth":I
    new-instance v3, Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-direct {v3}, Lcom/eventgenie/android/utils/social/rss/RssItem;-><init>()V

    .line 51
    .local v3, "item":Lcom/eventgenie/android/utils/social/rss/RssItem;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "eventType":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_f

    :cond_1
    if-eq v2, v8, :cond_f

    .line 52
    if-ne v2, v9, :cond_0

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 59
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v5, "link"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    const-string v5, "description"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 67
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v5, "encoded"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setContentEncoded(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_5
    const-string v5, "comments"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setComments(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_6
    const-string v5, "pubDate"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setPubDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_7
    const-string v5, "date"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 83
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setPubDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_8
    const-string v5, "guid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 87
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setGuid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "thumbnail"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 91
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->getAttributes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v0

    .line 93
    .local v0, "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 94
    const-string/jumbo v5, "url"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    .end local v0    # "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "content"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 98
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->getAttributes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v0

    .line 100
    .restart local v0    # "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 101
    const-string/jumbo v5, "url"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setContentUrl(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v5, "type"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "group"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 108
    :goto_1
    if-eq v2, v8, :cond_c

    .line 109
    if-ne v2, v9, :cond_e

    .line 111
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "thumbnail"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 112
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setThumbnailUrl(Ljava/lang/String;)V

    .line 128
    :cond_c
    :goto_2
    if-ne v2, v7, :cond_0

    goto/16 :goto_0

    .line 114
    :cond_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->isMediaNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "content"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 115
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/rss/RssItemParser;->getAttributes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v0

    .line 117
    .restart local v0    # "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 118
    const-string/jumbo v5, "url"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setContentUrl(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v5, "type"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/eventgenie/android/utils/social/rss/RssItem;->setContentType(Ljava/lang/String;)V

    goto :goto_2

    .line 125
    .end local v0    # "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .line 132
    .end local v4    # "name":Ljava/lang/String;
    :cond_f
    return-object v3
.end method
