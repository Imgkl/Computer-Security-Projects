.class Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$11;
.super Ljava/lang/Object;
.source "LowLevelOptionsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->printNetworkDataToSd()Landroid/view/View;
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
    .line 358
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$11;->this$0:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 362
    invoke-static {p2}, Lcom/eventgenie/android/utils/constants/IfDefs;->setSaveNetworkDataToSd(Z)V

    .line 363
    return-void
.end method
