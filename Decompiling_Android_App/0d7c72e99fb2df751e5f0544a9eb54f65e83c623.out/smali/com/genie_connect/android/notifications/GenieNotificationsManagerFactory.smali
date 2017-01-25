.class public Lcom/genie_connect/android/notifications/GenieNotificationsManagerFactory;
.super Ljava/lang/Object;
.source "GenieNotificationsManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager;

    move-result-object v0

    return-object v0
.end method
