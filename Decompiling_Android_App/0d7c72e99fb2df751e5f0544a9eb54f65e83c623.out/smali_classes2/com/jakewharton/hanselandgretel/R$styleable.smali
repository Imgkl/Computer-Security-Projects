.class public final Lcom/jakewharton/hanselandgretel/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/hanselandgretel/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FragmentBreadCrumb:[I

.field public static final FragmentBreadCrumb_hagDividerVertical:I = 0x0

.field public static final FragmentBreadCrumb_hagSelectableItemBackground:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jakewharton/hanselandgretel/R$styleable;->FragmentBreadCrumb:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010053
        0x7f010054
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
