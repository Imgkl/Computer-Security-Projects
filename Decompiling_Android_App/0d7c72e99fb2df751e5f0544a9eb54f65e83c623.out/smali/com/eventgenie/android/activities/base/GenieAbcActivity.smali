.class public abstract Lcom/eventgenie/android/activities/base/GenieAbcActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "GenieAbcActivity.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/GenieActivity;
.implements Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;
.implements Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbarControls;
.implements Lcom/eventgenie/android/activities/base/ActivityFields;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;
    }
.end annotation


# static fields
.field public static final PERMISSION_REQUEST_CAMERA:I = 0x7d

.field public static final PERMISSION_REQUEST_COARSE_LOCATION:I = 0x7b

.field public static final PERMISSION_REQUEST_STORAGE:I = 0x7c


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieAbc;

.field private mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

.field protected mAlertDialog:Landroid/app/AlertDialog;

.field protected mAskForPermissionAgain:Z

.field private mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

.field private mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

.field private mDefaultTabTag:Ljava/lang/String;

.field private mDoCheckPermissionsOnResumeLifecycle:Z

.field private mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

.field private mIsAuthenticated:Z

.field private mIsSecure:Z

.field private mNamespaceToUseForIcons:J

.field private mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mDefaultTabTag:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mIsAuthenticated:Z

    .line 96
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mIsSecure:Z

    .line 448
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

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    .line 455
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAskForPermissionAgain:Z

    .line 464
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mDoCheckPermissionsOnResumeLifecycle:Z

    .line 469
    return-void
.end method

.method private doSecureCheck()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mIsSecure:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->doSecureCheck(Landroid/app/Activity;ZZ)V

    .line 112
    return-void
.end method

.method protected static initialiseData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->initialiseData(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public static isDataServiceUpdating()Z
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    return v0
.end method

.method private requestPermission()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Request for the permissions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 651
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 652
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getPermissionRequestTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 653
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getPermissionRequestDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 654
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 655
    new-instance v1, Lcom/eventgenie/android/activities/base/GenieAbcActivity$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity$1;-><init>(Lcom/eventgenie/android/activities/base/GenieAbcActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 661
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 667
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 664
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": No need to show rationale, just request the permissions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequiredAllPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequestPermissionCode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public advertBarProcess()V
    .locals 0

    .prologue
    .line 102
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->advertBarProcess(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method public checkPermissionAndDoAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": no permissions required to check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permissions check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAskForPermissionAgain:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->requestPermission()V

    goto :goto_0

    .line 505
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Already got the permissions..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    if-eqz v0, :cond_3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": has callback, thus execute it, instead of default action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    invoke-interface {v0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;->execute()V

    .line 510
    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    goto :goto_0

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->doActionAfterGettingPermissions()V

    goto :goto_0

    .line 518
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Below Android  M thus do action normally."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    if-eqz v0, :cond_5

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": has callback, thus execute it, instead of default action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    invoke-interface {v0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;->execute()V

    .line 524
    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    goto/16 :goto_0

    .line 526
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->doActionAfterGettingPermissions()V

    goto/16 :goto_0
.end method

.method public close(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 108
    return-void
.end method

.method protected doActionAfterGettingPermissions()V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method protected doActionAfterRejectingPermissions()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method protected doCheckPermissionsOnResume(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mDoCheckPermissionsOnResumeLifecycle:Z

    .line 558
    return-void
.end method

.method public getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a GenieAbcActivity, you should use getActionBarCompat() instead!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    move-result-object v0

    return-object v0
.end method

.method public getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    return-object v0
.end method

.method public getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    return-object v0
.end method

.method public getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mDefaultTabTag:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->USER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    return-object v0
.end method

.method protected getNamespaceToUseForIcons()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mNamespaceToUseForIcons:J

    return-wide v0
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    const-string v0, ""

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const-string v0, ""

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    const-string v0, ""

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    const-string v0, ""

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRequiredMainPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 207
    invoke-static {p0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method

.method protected getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    if-nez v0, :cond_0

    .line 212
    sget v0, Lcom/eventgenie/android/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 213
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 214
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mTabPageIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    return-object v0
.end method

.method protected getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 221
    sget v0, Lcom/eventgenie/android/R$id;->pager:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    return-object v0
.end method

.method public goHome()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;Z)V

    .line 232
    return-void
.end method

.method public hideAdvert()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->displayAdvert(Landroid/app/Activity;Z)V

    .line 237
    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mIsAuthenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 246
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isInsideTab()Z
    .locals 1

    .prologue
    .line 251
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->isInsideTab(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mIsSecure:Z

    return v0
.end method

.method public navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V
    .locals 0
    .param p1, "navResult"    # Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .prologue
    .line 260
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 261
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 265
    invoke-static {p0, p1, p2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->doLoginActivityResult(Landroid/app/Activity;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mIsAuthenticated:Z

    .line 267
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onLoginSuccess()V

    .line 269
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public onAdClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->adClick()V

    .line 276
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method public onContactItemClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getContactDetailsIntent(Landroid/view/View;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    .line 287
    .local v0, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 288
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 295
    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 297
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 298
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 299
    const-string v2, "is_secure"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mIsSecure:Z

    .line 302
    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/db/config/IconManager;->getNamespaceToUseForIcons(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mNamespaceToUseForIcons:J

    .line 303
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->doSecureCheck()V

    .line 304
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 313
    return-void
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->goHome()V

    .line 317
    return-void
.end method

.method protected onLoginSuccess()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onMultiEventReturnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->onMultiEventReturnClick(Landroid/app/Activity;)V

    .line 323
    return-void
.end method

.method public onOpenAppropriateWidgetClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 329
    const-string v2, "^ ACTIONBAR: WE GO HOME!"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 333
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 339
    const/4 v1, 0x0

    .line 343
    .local v1, "result":Z
    :goto_0
    return v1

    .line 335
    .end local v1    # "result":Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->goHome()V

    .line 336
    const/4 v1, 0x1

    .line 337
    .restart local v1    # "result":Z
    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 350
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->activityPaused()V

    .line 351
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->pause()V

    .line 356
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 680
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 684
    packed-switch p1, :pswitch_data_0

    .line 718
    :goto_0
    return-void

    .line 688
    :pswitch_0
    aget v1, p3, v3

    if-nez v1, :cond_1

    .line 690
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    invoke-interface {v1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;->execute()V

    .line 693
    iput-object v4, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    goto :goto_0

    .line 695
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": The listener is null, then call the default action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->doActionAfterGettingPermissions()V

    goto :goto_0

    .line 700
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Permission NOT Granted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 702
    iput-boolean v3, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAskForPermissionAgain:Z

    .line 704
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 705
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getPermissionNotGrantedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 706
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getPermissionNotGrantedDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 707
    const v1, 0x104000a

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 708
    new-instance v1, Lcom/eventgenie/android/activities/base/GenieAbcActivity$2;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity$2;-><init>(Lcom/eventgenie/android/activities/base/GenieAbcActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 684
    nop

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
    .line 360
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 362
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->activityResumed()V

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v0, "syncFilter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.BROADCAST_VIEW_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    .line 369
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 371
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->resume()V

    .line 378
    :cond_1
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mDoCheckPermissionsOnResumeLifecycle:Z

    if-eqz v1, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->checkPermissionAndDoAction()V

    .line 383
    :cond_2
    return-void
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onSearchRequested()Z

    .line 387
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 392
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    .line 393
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->advertBarProcess()V

    .line 394
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 399
    return-void
.end method

.method protected openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V
    .locals 0
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;

    .prologue
    .line 402
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->openWidget(Landroid/app/Activity;Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 403
    return-void
.end method

.method public requery(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 407
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->requery(Landroid/database/Cursor;)V

    .line 408
    return-void
.end method

.method public setCheckPermissionsAgain(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAskForPermissionAgain:Z

    .line 539
    return-void
.end method

.method protected setIsAuthenticated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mIsAuthenticated:Z

    .line 412
    return-void
.end method

.method public setPermissionCallBack(Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mCallback:Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;

    .line 549
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public showAdvert()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 420
    return-void
.end method

.method public showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V
    .locals 2
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-static {p0, v0, p1, v1, v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setupSponsorship(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    .line 424
    return-void
.end method

.method public showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;)V
    .locals 2
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p2, "override"    # Ljava/lang/Long;

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setupSponsorship(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    .line 428
    return-void
.end method

.method public showIndicator(ZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "hasRefresh"    # Z

    .prologue
    .line 433
    return-void
.end method

.method public startActivityCarefully(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 436
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 437
    return-void
.end method
