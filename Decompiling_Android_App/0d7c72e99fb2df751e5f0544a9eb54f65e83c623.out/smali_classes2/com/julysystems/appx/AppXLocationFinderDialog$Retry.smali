.class Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;
.super Ljava/lang/Object;
.source "AppXLocationFinderDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/julysystems/appx/AppXLocationFinderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Retry"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;


# direct methods
.method private constructor <init>(Lcom/julysystems/appx/AppXLocationFinderDialog;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/julysystems/appx/AppXLocationFinderDialog;Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;-><init>(Lcom/julysystems/appx/AppXLocationFinderDialog;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    # getter for: Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->access$0(Lcom/julysystems/appx/AppXLocationFinderDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 101
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->locListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/julysystems/appx/AppXLocationFinderDialog;->locListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;->this$0:Lcom/julysystems/appx/AppXLocationFinderDialog;

    # invokes: Lcom/julysystems/appx/AppXLocationFinderDialog;->loadUI()V
    invoke-static {v0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->access$1(Lcom/julysystems/appx/AppXLocationFinderDialog;)V

    .line 104
    return-void
.end method
