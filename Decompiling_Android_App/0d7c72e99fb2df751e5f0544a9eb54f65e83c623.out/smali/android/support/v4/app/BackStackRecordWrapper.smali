.class public Landroid/support/v4/app/BackStackRecordWrapper;
.super Ljava/lang/Object;
.source "BackStackRecordWrapper.java"

# interfaces
.implements Landroid/support/v4/app/BackStackEntryWithIcon;


# instance fields
.field private mIconRes:I

.field private final mRecord:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 0
    .param p1, "record"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mRecord:Landroid/support/v4/app/BackStackRecord;

    .line 10
    return-void
.end method


# virtual methods
.method public getBackStackRecord()Landroid/support/v4/app/BackStackRecord;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mRecord:Landroid/support/v4/app/BackStackRecord;

    return-object v0
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mRecord:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getBreadCrumbShortTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mRecord:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getBreadCrumbShortTitleRes()I

    move-result v0

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mRecord:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mRecord:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getBreadCrumbTitleRes()I

    move-result v0

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mIconRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mRecord:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getId()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mRecord:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIconRes(I)V
    .locals 0
    .param p1, "drawableRes"    # I

    .prologue
    .line 52
    iput p1, p0, Landroid/support/v4/app/BackStackRecordWrapper;->mIconRes:I

    .line 53
    return-void
.end method
