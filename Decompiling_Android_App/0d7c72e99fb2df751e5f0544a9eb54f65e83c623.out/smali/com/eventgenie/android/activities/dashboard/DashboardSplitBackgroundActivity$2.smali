.class Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;
.super Ljava/lang/Object;
.source "DashboardSplitBackgroundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->buildGridUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: API               : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: Screen width      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplayWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: Screen height     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplayHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: Screen density    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplayDensity()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: Screen density DPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplayDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: BackgroundUpper View dims : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v5, [I

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$200(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$200(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    aput v2, v1, v4

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->collectionToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: BackgroundUpper Image dims: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$200(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/BitmapUtils;->getBitmapDimensionsAsString(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: BackgroundLower View dims : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v5, [I

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLowerBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$300(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLowerBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$300(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    aput v2, v1, v4

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->collectionToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH: BackgroundLower Image dims: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLowerBg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$300(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/BitmapUtils;->getBitmapDimensionsAsString(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ DASH:            View height sum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mLowerBg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$300(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mUpperBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$200(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 135
    const-string v0, "^ DASH: ----------------------"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 136
    return-void
.end method
