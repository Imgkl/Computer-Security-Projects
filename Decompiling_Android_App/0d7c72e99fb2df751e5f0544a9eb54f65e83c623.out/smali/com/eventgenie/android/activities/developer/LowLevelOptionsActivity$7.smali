.class Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$7;
.super Ljava/lang/Object;
.source "LowLevelOptionsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createEnableNewDownloadables()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$7;->this$0:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 242
    invoke-static {p2}, Lcom/eventgenie/android/utils/constants/IfDefs;->setUseNewDownloadables(Z)V

    .line 243
    return-void
.end method
