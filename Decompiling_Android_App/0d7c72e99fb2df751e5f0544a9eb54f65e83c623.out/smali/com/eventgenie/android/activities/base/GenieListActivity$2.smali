.class Lcom/eventgenie/android/activities/base/GenieListActivity$2;
.super Ljava/lang/Object;
.source "GenieListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/base/GenieListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieListActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity$2;->this$0:Lcom/eventgenie/android/activities/base/GenieListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity$2;->this$0:Lcom/eventgenie/android/activities/base/GenieListActivity;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 64
    return-void
.end method
