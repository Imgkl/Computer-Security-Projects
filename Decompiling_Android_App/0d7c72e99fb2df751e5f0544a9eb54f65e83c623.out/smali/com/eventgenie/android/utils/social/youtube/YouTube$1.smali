.class Lcom/eventgenie/android/utils/social/youtube/YouTube$1;
.super Ljava/lang/Object;
.source "YouTube.java"

# interfaces
.implements Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/social/youtube/YouTube;->getVideo(Ljava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
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
        "Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/social/youtube/YouTube;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/social/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$1;->this$0:Lcom/eventgenie/android/utils/social/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    .locals 1
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    # invokes: Lcom/eventgenie/android/utils/social/youtube/YouTube;->parseVideoResponse(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->access$000(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$1;->handleResponse(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v0

    return-object v0
.end method
