.class Lcom/eventgenie/android/utils/social/flickr/Flickr$5;
.super Ljava/lang/Object;
.source "Flickr.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/social/flickr/Flickr;

.field final synthetic val$photos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/flickr/Flickr;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$5;->this$0:Lcom/eventgenie/android/utils/social/flickr/Flickr;

    iput-object p2, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$5;->val$photos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

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
    .line 438
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$5$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$5$1;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$5;)V

    # invokes: Lcom/eventgenie/android/utils/social/flickr/Flickr;->parseResponse(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V
    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->access$100(Ljava/io/InputStream;Lcom/eventgenie/android/utils/social/flickr/Flickr$ResponseParser;)V

    .line 445
    return-void
.end method
