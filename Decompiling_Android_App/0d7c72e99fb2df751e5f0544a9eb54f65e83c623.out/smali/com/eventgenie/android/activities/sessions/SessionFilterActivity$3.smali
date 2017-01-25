.class Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$3;
.super Ljava/lang/Object;
.source "SessionFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->addFilterPage(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$3;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$3;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$3;->val$list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 199
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$3;->val$list:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method
