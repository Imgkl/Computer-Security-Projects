.class Lcom/urbanairship/google/GooglePlayServicesUtilWrapper;
.super Ljava/lang/Object;
.source "GooglePlayServicesUtilWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isUserRecoverableError(I)Z
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v0

    return v0
.end method
