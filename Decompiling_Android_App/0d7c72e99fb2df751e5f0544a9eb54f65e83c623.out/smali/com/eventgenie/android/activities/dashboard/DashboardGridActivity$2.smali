.class Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$2;
.super Ljava/lang/Object;
.source "DashboardGridActivity.java"

# interfaces
.implements Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->buildGridUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterAdvertisementCampaignSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$dimen;->adbanner_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 176
    .local v0, "padding":I
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$100(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGrid1:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$100(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 179
    :cond_0
    return-void
.end method
