.class public abstract Lcom/urbanairship/analytics/ActivityMonitor$Listener;
.super Ljava/lang/Object;
.source "ActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/analytics/ActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBackground(J)V
.end method

.method public abstract onForeground(J)V
.end method
