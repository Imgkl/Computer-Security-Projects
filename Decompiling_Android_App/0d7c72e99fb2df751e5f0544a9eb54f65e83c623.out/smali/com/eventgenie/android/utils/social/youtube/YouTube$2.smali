.class Lcom/eventgenie/android/utils/social/youtube/YouTube$2;
.super Ljava/lang/Object;
.source "YouTube.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/youtube/YouTube;->getChannelIdForUser(Ljava/lang/String;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/social/youtube/YouTube;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$2;->this$0:Lcom/eventgenie/android/utils/social/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$2;->handleResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    # invokes: Lcom/eventgenie/android/utils/social/youtube/YouTube;->parseChannelResponse(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
