.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask$1;
.super Ljava/lang/Object;
.source "ActivityStreamDetailsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->onPostExecute(Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/genie_connect/common/db/model/ActivityStreamComment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask$1;->this$1:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/genie_connect/common/db/model/ActivityStreamComment;Lcom/genie_connect/common/db/model/ActivityStreamComment;)I
    .locals 2
    .param p1, "lhs"    # Lcom/genie_connect/common/db/model/ActivityStreamComment;
    .param p2, "rhs"    # Lcom/genie_connect/common/db/model/ActivityStreamComment;

    .prologue
    .line 279
    iget-object v0, p2, Lcom/genie_connect/common/db/model/ActivityStreamComment;->timestamp:Ljava/util/Date;

    iget-object v1, p1, Lcom/genie_connect/common/db/model/ActivityStreamComment;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 274
    check-cast p1, Lcom/genie_connect/common/db/model/ActivityStreamComment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/genie_connect/common/db/model/ActivityStreamComment;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask$1;->compare(Lcom/genie_connect/common/db/model/ActivityStreamComment;Lcom/genie_connect/common/db/model/ActivityStreamComment;)I

    move-result v0

    return v0
.end method
