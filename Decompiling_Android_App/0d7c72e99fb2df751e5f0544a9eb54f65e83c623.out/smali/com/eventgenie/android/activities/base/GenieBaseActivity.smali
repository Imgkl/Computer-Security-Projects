.class public abstract Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GenieBaseActivity.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/GenieActivity;
.implements Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;
.implements Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbarControls;
.implements Lcom/eventgenie/android/activities/base/ActivityFields;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;
    }
.end annotation


# static fields
.field public static final OPEN_MULTIEVENT_SELECTOR:Ljava/lang/String; = "open_multievent_selector"

.field public static final PERMISSION_REQUEST_CAMERA:I = 0x7d

.field public static final PERMISSION_REQUEST_COARSE_LOCATION:I = 0x7b

.field public static final PERMISSION_REQUEST_STORAGE:I = 0x7c


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

.field private mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

.field protected mAlertDialog:Landroid/app/AlertDialog;

.field protected mAskForPermissionAgain:Z

.field private mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

.field private mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

.field private mDoCheckPermissionsOnResumeLifecycle:Z

.field protected mEventBus:Lde/greenrobot/event/EventBus;

.field private mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

.field private mIsAuthenticated:Z

.field private mIsHome:Z

.field private mIsSecure:Z

.field protected final mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

.field protected mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsAuthenticated:Z

    .line 113
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsHome:Z

    .line 114
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsSecure:Z

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    .line 189
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAskForPermissionAgain:Z

    .line 198
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mDoCheckPermissionsOnResumeLifecycle:Z

    .line 806
    new-instance v0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity$3;-><init>(Lcom/eventgenie/android/activities/base/GenieBaseActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static advertBarProcess(Landroid/app/Activity;)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 773
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 774
    .local v0, "config":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getNavBarColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getTitleBarColour()I

    move-result v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setAdBarBackground(Landroid/app/Activity;I)V

    .line 775
    return-void
.end method

.method private doInternalSecureCheck()V
    .locals 3

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v0

    .line 471
    .local v0, "myGroup":Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v1

    .line 474
    .local v1, "targetGroup":Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doInternalSecureCheck(Landroid/app/Activity;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)V

    .line 475
    return-void
.end method

.method public static doInternalSecureCheck(Landroid/app/Activity;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "myGroup"    # Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .param p2, "targetGroup"    # Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .prologue
    .line 778
    invoke-static {p1, p2}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ ACTIVITY: Failed to open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 784
    :cond_0
    return-void
.end method

.method private static doSecureCheck(Landroid/app/Activity;ZZ)V
    .locals 0
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "isSecure"    # Z
    .param p2, "isHomeActivity"    # Z

    .prologue
    .line 787
    invoke-static {p0, p1, p2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->doSecureCheck(Landroid/app/Activity;ZZ)V

    .line 788
    return-void
.end method

.method protected static initialiseData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/eventgenie/android/utils/help/ProoferUtils;->initialiseData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 792
    return-void
.end method

.method protected static initialiseData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "isMultiEventTransform"    # Z

    .prologue
    .line 795
    invoke-static {p0, p1, p2}, Lcom/eventgenie/android/utils/help/ProoferUtils;->initialiseData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 796
    return-void
.end method

.method private requestPermission()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Request for the permissions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 377
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getPermissionRequestTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getPermissionRequestDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 380
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    new-instance v1, Lcom/eventgenie/android/activities/base/GenieBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity$1;-><init>(Lcom/eventgenie/android/activities/base/GenieBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 393
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permissions .. thus start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredAllPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequestPermissionCode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public advertBarProcess()V
    .locals 0

    .prologue
    .line 446
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->advertBarProcess(Landroid/app/Activity;)V

    .line 447
    return-void
.end method

.method protected checkForApplicationLockout()V
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->shouldMakeLockoutCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->hasEventExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {p0}, Lcom/eventgenie/android/utils/intents/Navigation;->goToLockout(Landroid/app/Activity;)V

    .line 455
    :cond_0
    return-void
.end method

.method protected checkForUpdates()V
    .locals 1

    .prologue
    .line 458
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;I)V

    .line 461
    :cond_0
    return-void
.end method

.method public checkPermissionAndDoAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": no permissions required to check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permissions check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAskForPermissionAgain:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->requestPermission()V

    goto :goto_0

    .line 234
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Already got the permissions..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    if-eqz v0, :cond_3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": has callback, thus execute it, instead of default action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    invoke-interface {v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;->execute()V

    .line 239
    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doActionAfterGettingPermissions()V

    goto :goto_0

    .line 247
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Below Android  M thus do action normally."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    if-eqz v0, :cond_5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": has callback, thus execute it, instead of default action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    invoke-interface {v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;->execute()V

    .line 253
    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    goto/16 :goto_0

    .line 255
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doActionAfterGettingPermissions()V

    goto/16 :goto_0
.end method

.method public close(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 465
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 466
    return-void
.end method

.method protected doActionAfterGettingPermissions()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method protected doActionAfterRejectingPermissions()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method protected doCheckPermissionsOnResume(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mDoCheckPermissionsOnResumeLifecycle:Z

    .line 279
    return-void
.end method

.method protected doSecureCheck()V
    .locals 2

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsSecure:Z

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsHome:Z

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doSecureCheck(Landroid/app/Activity;ZZ)V

    .line 479
    return-void
.end method

.method public getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    return-object v0
.end method

.method public getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    return-object v0
.end method

.method public getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a GenieBaseActivity, you should use getActionbar() instead!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    return-object v0
.end method

.method public getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
    .locals 1

    .prologue
    .line 510
    invoke-static {}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 530
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 554
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->USER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 560
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 565
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const-string v0, ""

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-string v0, ""

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    const-string v0, ""

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const-string v0, ""

    return-object v0
.end method

.method public getProvider(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRequiredMainPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 575
    invoke-static {p0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
    .locals 1

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    return-object v0
.end method

.method public goHome()V
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;Z)V

    .line 586
    return-void
.end method

.method public goHome(Z)V
    .locals 0
    .param p1, "openMultiEventWidget"    # Z

    .prologue
    .line 589
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;Z)V

    .line 590
    return-void
.end method

.method public hideAdvert()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->displayAdvert(Landroid/app/Activity;Z)V

    .line 595
    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsAuthenticated:Z

    return v0
.end method

.method protected isBackgroundUpdateApplicable()Z
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 604
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isInsideTab()Z
    .locals 1

    .prologue
    .line 609
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->isInsideTab(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsSecure:Z

    return v0
.end method

.method protected jumpToMultiEventSelector(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 619
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 620
    const-string v4, "open_multievent_selector"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 621
    .local v3, "showMultieventSelect":Z
    if-eqz v3, :cond_1

    .line 622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 623
    .local v2, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 624
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    goto :goto_0

    .line 629
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    .end local v3    # "showMultieventSelect":Z
    :cond_1
    return-void
.end method

.method public navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V
    .locals 0
    .param p1, "navResult"    # Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .prologue
    .line 632
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 633
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 637
    invoke-static {p0, p1, p2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->doLoginActivityResult(Landroid/app/Activity;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsAuthenticated:Z

    .line 639
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onLoginSuccess()V

    .line 641
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 642
    return-void
.end method

.method public onAdClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->adClick()V

    .line 648
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 652
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 653
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 654
    return-void
.end method

.method public onContactItemClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 657
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getContactDetailsIntent(Landroid/view/View;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 658
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v3

    const-class v4, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {v3, v4}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/services/UpdatesManager;

    iput-object v3, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;

    .line 124
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v3

    const-class v4, Lde/greenrobot/event/EventBus;

    invoke-virtual {v3, v4}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/EventBus;

    iput-object v3, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 127
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 129
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 130
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 133
    const-class v3, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 134
    const-string v3, "is_home"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsHome:Z

    .line 135
    const-string v3, "is_secure"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsSecure:Z

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doInternalSecureCheck()V

    .line 139
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doSecureCheck()V

    .line 141
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 665
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 668
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 669
    return-void
.end method

.method public onDiscardClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 815
    return-void
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->goHome()V

    .line 673
    return-void
.end method

.method protected onLoginSuccess()V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiEventReturnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 684
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->onMultiEventReturnClick(Landroid/app/Activity;)V

    .line 685
    return-void
.end method

.method public onOpenAppropriateWidgetClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 688
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 692
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 693
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->activityPaused()V

    .line 695
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 697
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->pause()V

    .line 700
    :cond_0
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 704
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 406
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 410
    packed-switch p1, :pswitch_data_0

    .line 442
    :goto_0
    return-void

    .line 414
    :pswitch_0
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    aget v1, p3, v3

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    invoke-interface {v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;->execute()V

    goto :goto_0

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": The listener is null, then call the default action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doActionAfterGettingPermissions()V

    goto :goto_0

    .line 424
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Permission NOT Granted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 426
    iput-boolean v3, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAskForPermissionAgain:Z

    .line 428
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getPermissionNotGrantedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getPermissionNotGrantedDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 431
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    new-instance v1, Lcom/eventgenie/android/activities/base/GenieBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity$2;-><init>(Lcom/eventgenie/android/activities/base/GenieBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->isBackgroundUpdateApplicable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {v1}, Lcom/genie_connect/android/services/UpdatesManager;->isBackgroundUpdateAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {v1, p0}, Lcom/genie_connect/android/services/UpdatesManager;->applyBackgroundUpdate(Landroid/app/Activity;)V

    .line 156
    :cond_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->activityResumed()V

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "syncFilter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.BROADCAST_VIEW_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    .line 163
    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 165
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->checkForApplicationLockout()V

    .line 167
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->resume()V

    .line 174
    :cond_2
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mDoCheckPermissionsOnResumeLifecycle:Z

    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->checkPermissionAndDoAction()V

    .line 179
    :cond_3
    return-void
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onSearchRequested()Z

    .line 708
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 712
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 713
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    .line 714
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->advertBarProcess()V

    .line 715
    return-void
.end method

.method public openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V
    .locals 0
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;

    .prologue
    .line 718
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->openWidget(Landroid/app/Activity;Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 719
    return-void
.end method

.method public requery(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 723
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->requery(Landroid/database/Cursor;)V

    .line 724
    return-void
.end method

.method protected setIsAuthenticated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mIsAuthenticated:Z

    .line 728
    return-void
.end method

.method protected setPermissionCallBack(Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    .line 270
    return-void
.end method

.method protected setupWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 732
    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 734
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 736
    :cond_0
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x1

    return v0
.end method

.method public showAdvert()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, v0, v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 748
    return-void
.end method

.method public showAdvert(Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V
    .locals 1
    .param p1, "callback"    # Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    .prologue
    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 744
    return-void
.end method

.method protected showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V
    .locals 2
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;

    .prologue
    const/4 v1, 0x0

    .line 751
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-static {p0, v0, p1, v1, v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setupSponsorship(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    .line 752
    return-void
.end method

.method protected showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V
    .locals 2
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p2, "callback"    # Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setupSponsorship(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    .line 757
    return-void
.end method

.method protected showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V
    .locals 1
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p2, "override"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setupSponsorship(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    .line 761
    return-void
.end method

.method public showIndicator(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "hasRefresh"    # Z

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 766
    return-void
.end method

.method public startActivityCarefully(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 769
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 770
    return-void
.end method
