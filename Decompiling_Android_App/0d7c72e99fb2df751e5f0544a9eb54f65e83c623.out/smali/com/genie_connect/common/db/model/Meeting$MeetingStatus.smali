.class public interface abstract Lcom/genie_connect/common/db/model/Meeting$MeetingStatus;
.super Ljava/lang/Object;
.source "Meeting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/Meeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MeetingStatus"
.end annotation


# static fields
.field public static final STATUS_AUTO_CANCELLED:I = 0x4

.field public static final STATUS_AUTO_CONFIRMED:I = 0x5

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CONFIRMED:I = 0x2

.field public static final STATUS_DECLINED:I = 0x1

.field public static final STATUS_PENDING:I
