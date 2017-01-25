.class Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;
.super Ljava/lang/Object;
.source "DashboardTileActivity.java"

# interfaces
.implements Lcom/genie_connect/android/utils/delegates/Delegates$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->populateFlowLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genie_connect/android/utils/delegates/Delegates$Action",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCounter:I

.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

.field final synthetic val$module:Lcom/genie_connect/android/db/config/GenieMobileModule;

.field final synthetic val$namespaceToUseForIcons:Ljava/lang/Long;

.field final synthetic val$resolution:I


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;ILcom/genie_connect/android/db/config/GenieMobileModule;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    iput p2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->val$resolution:I

    iput-object p3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->val$module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    iput-object p4, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->val$namespaceToUseForIcons:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "param"    # Landroid/graphics/Bitmap;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    iget v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->val$resolution:I

    # invokes: Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->scaleDesignerLayoutAsset(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v1, p1, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->access$100(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 299
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->val$module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    iget v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->mCounter:I

    # invokes: Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->createTileViewFromBitmap(Landroid/graphics/Bitmap;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V
    invoke-static {v1, p1, v2, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->access$200(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;Landroid/graphics/Bitmap;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->val$module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    iget-object v4, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->val$namespaceToUseForIcons:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIcon(Landroid/content/Context;JLcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 304
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->val$module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    iget v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->mCounter:I

    # invokes: Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->createTileViewFromDrawable(Landroid/graphics/drawable/Drawable;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V
    invoke-static {v1, v0, v2, v3}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->access$300(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;Landroid/graphics/drawable/Drawable;Lcom/genie_connect/android/db/config/GenieMobileModule;I)V

    goto :goto_0
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 285
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->execute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setCounter(I)Lcom/genie_connect/android/utils/delegates/Delegates$Action;
    .locals 0
    .param p1, "counter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/genie_connect/android/utils/delegates/Delegates$Action",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iput p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$2;->mCounter:I

    .line 291
    return-object p0
.end method
