.class Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper$1;
.super Ljava/lang/Object;
.source "ActivityStreamCommentWrapper.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/features/GmListModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->getListModifier()Lcom/genie_connect/android/db/config/features/GmListModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper$1;->this$0:Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public showThumbnail()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method
