.class Lcom/julysystems/appx/AppXLocationFinderDialog;
.super Landroid/app/Dialog;
.source "AppXLocationFinderDialog.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;,
        Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;
    }
.end annotation


# static fields
.field static final DIMENSIONS_LANDSCAPE:[F

.field static final DIMENSIONS_PORTRAIT:[F

.field static locListener:Landroid/location/LocationListener;

.field static locationManager:Landroid/location/LocationManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private fence:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

.field private fenceListner:Lcom/julysystems/appx/AppXFenceListner;

.field private final highAccuracy:Z

.field private final latitude:D

.field private final longitude:D

.field private mContent:Landroid/widget/LinearLayout;

.field public mSpinner:Landroid/app/ProgressDialog;

.field private msgInsideGeoFence:Ljava/lang/String;

.field private msgView:Landroid/widget/TextView;

.field private final radius:D

.field private retry:Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 40
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->DIMENSIONS_LANDSCAPE:[F

    .line 41
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->DIMENSIONS_PORTRAIT:[F

    return-void

    .line 40
    :array_0
    .array-data 4
        0x43820000    # 260.0f
        0x43820000    # 260.0f
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x438c0000    # 280.0f
        0x43340000    # 180.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ZDDD)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "highAccuracy"    # Z
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "radius"    # D

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 44
    iput-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    .line 53
    iput-object p1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->context:Landroid/content/Context;

    .line 54
    iput-boolean p2, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->highAccuracy:Z

    .line 55
    iput-wide p3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->latitude:D

    .line 56
    iput-wide p5, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->longitude:D

    .line 57
    iput-wide p7, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->radius:D

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/julysystems/appx/AppXLocationFinderDialog;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/julysystems/appx/AppXLocationFinderDialog;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->loadUI()V

    return-void
.end method

.method static synthetic access$2(Lcom/julysystems/appx/AppXLocationFinderDialog;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->highAccuracy:Z

    return v0
.end method

.method static synthetic access$3(Lcom/julysystems/appx/AppXLocationFinderDialog;)Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->retry:Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;

    return-object v0
.end method

.method static synthetic access$4(Lcom/julysystems/appx/AppXLocationFinderDialog;)Lcom/julysystems/appx/AppXFenceListner;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fenceListner:Lcom/julysystems/appx/AppXFenceListner;

    return-object v0
.end method

.method static synthetic access$5(Lcom/julysystems/appx/AppXLocationFinderDialog;)Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fence:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    return-object v0
.end method

.method private fenceUpdated(Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;)V
    .locals 1
    .param p1, "fence"    # Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->dismissLoader()V

    .line 176
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;->INSIDE:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    if-ne p1, v0, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->loadUI()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;->UNKNOWN:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    if-ne p1, v0, :cond_2

    .line 179
    const-string v0, "Your GPS location required for live video streaming cannot be detected at this time. Make sure to enable all location services in the Location & security setting"

    iput-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgInsideGeoFence:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->loadUI()V

    goto :goto_0

    .line 181
    :cond_2
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;->OUTSIDE:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    if-ne p1, v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->dismiss()V

    .line 183
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fenceListner:Lcom/julysystems/appx/AppXFenceListner;

    invoke-interface {v0, p1}, Lcom/julysystems/appx/AppXFenceListner;->onFenceUpdate(Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;)V

    goto :goto_0
.end method

.method private loadUI()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    .line 188
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->dismissLoader()V

    .line 189
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    .line 190
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgInsideGeoFence:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgInsideGeoFence:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const-string v4, "#b00400"

    invoke-static {v4}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 196
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 198
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const/16 v4, 0x14

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 199
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "butLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    const/16 v3, 0x50

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 206
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 207
    .local v2, "retryBut":Landroid/widget/Button;
    const-string v3, "Retry"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const-string v3, "#303030"

    invoke-static {v3}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 209
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v3, Lcom/julysystems/appx/AppXLocationFinderDialog$1;

    invoke-direct {v3, p0}, Lcom/julysystems/appx/AppXLocationFinderDialog$1;-><init>(Lcom/julysystems/appx/AppXLocationFinderDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    new-instance v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "cancelBut":Landroid/widget/Button;
    const-string v3, "Cancel"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const-string v3, "#303030"

    invoke-static {v3}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 237
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v3, Lcom/julysystems/appx/AppXLocationFinderDialog$2;

    invoke-direct {v3, p0}, Lcom/julysystems/appx/AppXLocationFinderDialog$2;-><init>(Lcom/julysystems/appx/AppXLocationFinderDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    return-void

    .line 193
    .end local v0    # "butLayout":Landroid/widget/LinearLayout;
    .end local v1    # "cancelBut":Landroid/widget/Button;
    .end local v2    # "retryBut":Landroid/widget/Button;
    :cond_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const-string v4, "Unable to find the Location"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public check()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->show()V

    .line 65
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->highAccuracy:Z

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->checkFencing(Z)V

    .line 66
    return-void
.end method

.method public checkFencing(Z)V
    .locals 7
    .param p1, "highAccuracy"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->showLoader()V

    .line 155
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->locationManager:Landroid/location/LocationManager;

    .line 157
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const-string v6, "The detection of the user\u2019s GPS location is required before allowing the live video streaming. Please, go to Settings > Location & security, and enable GPS location options."

    .line 160
    .local v6, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->dismiss()V

    .line 163
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fenceListner:Lcom/julysystems/appx/AppXFenceListner;

    sget-object v1, Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;->UNKNOWN:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    invoke-interface {v0, v1}, Lcom/julysystems/appx/AppXFenceListner;->onFenceUpdate(Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;)V

    .line 172
    .end local v6    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 166
    :cond_1
    if-eqz p1, :cond_2

    .line 167
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 169
    :cond_2
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public dismissLoader()V
    .locals 1

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXLocationFinderDialog;->requestWindowFeature(I)Z

    .line 72
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    .line 73
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    const-string v4, "#dddddd"

    invoke-static {v4}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 76
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    .line 77
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const-string v4, "#b00400"

    invoke-static {v4}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v9, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const/16 v4, 0xa

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 83
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const-string v4, "Streaming of the live video is not allowed in the vicinity of the race areas during the race event hours."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 86
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXLocationFinderDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 88
    .local v2, "scale":F
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->DIMENSIONS_PORTRAIT:[F

    .line 89
    .local v0, "dimensions":[F
    :goto_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    aget v5, v0, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    aget v6, v0, v7

    mul-float/2addr v6, v2

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/julysystems/appx/AppXLocationFinderDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v3, Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;-><init>(Lcom/julysystems/appx/AppXLocationFinderDialog;Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;)V

    iput-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->retry:Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;

    .line 91
    iget-object v3, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->retry:Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void

    .line 88
    .end local v0    # "dimensions":[F
    :cond_0
    sget-object v0, Lcom/julysystems/appx/AppXLocationFinderDialog;->DIMENSIONS_LANDSCAPE:[F

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->retry:Lcom/julysystems/appx/AppXLocationFinderDialog$Retry;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 135
    iget-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    iget-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    const-string v4, "Streaming of the live video is not allowed in the vicinity of the race areas during the race event hours."

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    sget-object v1, Lcom/julysystems/appx/AppXLocationFinderDialog;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 139
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "center":Landroid/location/Location;
    iget-wide v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->latitude:D

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 141
    iget-wide v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->longitude:D

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 142
    iget-wide v4, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->radius:D

    const-wide v6, 0x409925604189374cL    # 1609.344

    mul-double v2, v4, v6

    .line 143
    .local v2, "finalBlockDistance":D
    sget-object v1, Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;->UNKNOWN:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    iput-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fence:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    .line 144
    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    float-to-double v4, v1

    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    .line 145
    sget-object v1, Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;->OUTSIDE:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    iput-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fence:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fence:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    invoke-direct {p0, v1}, Lcom/julysystems/appx/AppXLocationFinderDialog;->fenceUpdated(Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;)V

    .line 151
    return-void

    .line 146
    :cond_0
    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    float-to-double v4, v1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 147
    sget-object v1, Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;->INSIDE:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    iput-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fence:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    goto :goto_0

    .line 149
    :cond_1
    sget-object v1, Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;->UNKNOWN:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    iput-object v1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fence:Lcom/julysystems/appx/AppXLocationFinderDialog$GeoFence;

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 130
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 126
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "status is getting printed......"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 30
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 32
    :cond_0
    return-void
.end method

.method public setFenceListner(Lcom/julysystems/appx/AppXFenceListner;)V
    .locals 0
    .param p1, "fenceListner"    # Lcom/julysystems/appx/AppXFenceListner;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->fenceListner:Lcom/julysystems/appx/AppXFenceListner;

    .line 252
    return-void
.end method

.method public setMsgInsideGeoFence(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgInsideGeoFence"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->msgInsideGeoFence:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public showLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 259
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "Getting the Location..."

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 264
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "Getting the Location..."

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/julysystems/appx/AppXLocationFinderDialog;->mSpinner:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
