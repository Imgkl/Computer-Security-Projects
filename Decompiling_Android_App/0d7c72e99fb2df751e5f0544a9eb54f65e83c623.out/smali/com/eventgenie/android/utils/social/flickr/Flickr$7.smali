.class Lcom/eventgenie/android/utils/social/flickr/Flickr$7;
.super Ljava/lang/Object;
.source "Flickr.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr;->hasUpdates(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;Ljava/util/Calendar;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/social/flickr/Flickr;

.field final synthetic val$reference:Ljava/util/Calendar;

.field final synthetic val$updated:[Z


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;[ZLjava/util/Calendar;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$7;->this$0:Lcom/eventgenie/android/utils/social/flickr/Flickr;

    iput-object p2, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$7;->val$updated:[Z

    iput-object p3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$7;->val$reference:Ljava/util/Calendar;

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
    .line 523
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$7$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$7$1;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$7;)V

    # invokes: Lcom/eventgenie/android/utils/social/flickr/Flickr;->parseFeedResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V
    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->access$1000(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V

    .line 530
    return-void
.end method
