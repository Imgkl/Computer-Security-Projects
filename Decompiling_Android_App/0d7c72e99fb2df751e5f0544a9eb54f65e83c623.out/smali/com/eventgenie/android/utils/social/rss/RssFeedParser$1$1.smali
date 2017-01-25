.class Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1$1;
.super Ljava/lang/Object;
.source "RssFeedParser.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;->handleResponse(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1$1;->this$1:Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1$1;->this$1:Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;

    iget-object v0, v0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;->this$0:Lcom/eventgenie/android/utils/social/rss/RssFeedParser;

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1$1;->this$1:Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;

    iget-object v1, v1, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;->val$feed:Lcom/eventgenie/android/utils/social/rss/RssChannel;

    # invokes: Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->parseFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/rss/RssChannel;)V
    invoke-static {v0, p1, v1}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->access$000(Lcom/eventgenie/android/utils/social/rss/RssFeedParser;Lorg/xmlpull/v1/XmlPullParser;Lcom/eventgenie/android/utils/social/rss/RssChannel;)V

    .line 103
    return-void
.end method
