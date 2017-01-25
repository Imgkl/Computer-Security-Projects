.class interface abstract Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;
.super Ljava/lang/Object;
.source "RssFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/rss/RssFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ResponseParser"
.end annotation


# virtual methods
.method public abstract parseResponse(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
