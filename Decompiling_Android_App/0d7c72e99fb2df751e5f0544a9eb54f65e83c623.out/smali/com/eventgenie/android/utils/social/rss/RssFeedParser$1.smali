.class Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;
.super Ljava/lang/Object;
.source "RssFeedParser.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->getFeed(Ljava/lang/String;Landroid/content/Context;Z)Lcom/eventgenie/android/utils/social/rss/RssChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/social/rss/RssFeedParser;

.field final synthetic val$feed:Lcom/eventgenie/android/utils/social/rss/RssChannel;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/rss/RssFeedParser;Lcom/eventgenie/android/utils/social/rss/RssChannel;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;->this$0:Lcom/eventgenie/android/utils/social/rss/RssFeedParser;

    iput-object p2, p0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;->val$feed:Lcom/eventgenie/android/utils/social/rss/RssChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1$1;-><init>(Lcom/eventgenie/android/utils/social/rss/RssFeedParser$1;)V

    # invokes: Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->parseFeedResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;)V
    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->access$100(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/rss/RssFeedParser$ResponseParser;)V

    .line 105
    return-void
.end method
