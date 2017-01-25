.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$1;
.super Ljava/lang/Object;
.source "ActivityStreamPostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->addBitmapToGallery(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->delete(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;Landroid/view/View;)V

    .line 223
    return-void
.end method
