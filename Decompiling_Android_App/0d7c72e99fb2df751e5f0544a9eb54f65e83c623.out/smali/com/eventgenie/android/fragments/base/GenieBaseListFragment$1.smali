.class Lcom/eventgenie/android/fragments/base/GenieBaseListFragment$1;
.super Ljava/lang/Object;
.source "GenieBaseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->setupSponsorship(Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;

.field final synthetic val$ad:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment$1;->this$0:Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;

    iput-object p2, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment$1;->val$ad:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment$1;->val$ad:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->adClick()V

    .line 228
    return-void
.end method
