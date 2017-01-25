.class Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;
.super Ljava/lang/Object;
.source "SuperActivityToast.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperActivityToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceHolder"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;

.field mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field mBackground:I

.field mButtonIcon:I

.field mButtonText:Ljava/lang/String;

.field mButtonTextColor:I

.field mButtonTextSize:F

.field mButtonTypefaceStyle:I

.field mClickListenerTag:Ljava/lang/String;

.field mDismissListenerTag:Ljava/lang/String;

.field mDivider:I

.field mDuration:I

.field mIcon:I

.field mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

.field mIsIndeterminate:Z

.field mIsTouchDismissible:Z

.field mText:Ljava/lang/String;

.field mTextColor:I

.field mTextSize:F

.field mToken:Landroid/os/Parcelable;

.field mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

.field mTypefaceStyle:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    new-instance v1, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder$1;

    invoke-direct {v1, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;)V

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1589
    invoke-static {}, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->values()[Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1591
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v4, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v1, v4, :cond_0

    .line 1593
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    .line 1594
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextSize:F

    .line 1595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextColor:I

    .line 1596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonIcon:I

    .line 1597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDivider:I

    .line 1598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTypefaceStyle:I

    .line 1599
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    .line 1600
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    .line 1604
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 1606
    .local v0, "hasIcon":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    .line 1609
    invoke-static {}, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->values()[Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 1613
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    .line 1614
    invoke-static {}, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->values()[Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 1615
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mText:Ljava/lang/String;

    .line 1616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTypefaceStyle:I

    .line 1617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDuration:I

    .line 1618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTextColor:I

    .line 1619
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTextSize:F

    .line 1620
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIsIndeterminate:Z

    .line 1621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mBackground:I

    .line 1622
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIsTouchDismissible:Z

    .line 1624
    return-void

    .end local v0    # "hasIcon":Z
    :cond_2
    move v0, v3

    .line 1604
    goto :goto_0

    .restart local v0    # "hasIcon":Z
    :cond_3
    move v1, v3

    .line 1620
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1622
    goto :goto_2
.end method

.method public constructor <init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V
    .locals 2
    .param p1, "superActivityToast"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder$1;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1552
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getType()Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1554
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v0, v1, :cond_0

    .line 1556
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    .line 1557
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getButtonTextSize()F

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextSize:F

    .line 1558
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getButtonTextColor()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextColor:I

    .line 1559
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getButtonIcon()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonIcon:I

    .line 1560
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getDividerColor()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDivider:I

    .line 1561
    # invokes: Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getOnClickWrapperTag()Ljava/lang/String;
    invoke-static {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->access$300(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    .line 1562
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getButtonTypefaceStyle()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTypefaceStyle:I

    .line 1563
    # invokes: Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getToken()Landroid/os/Parcelable;
    invoke-static {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->access$400(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    .line 1567
    :cond_0
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getIconPosition()Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1569
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    .line 1570
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getIconPosition()Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 1574
    :cond_1
    # invokes: Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getOnDismissWrapperTag()Ljava/lang/String;
    invoke-static {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->access$500(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    .line 1575
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 1576
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mText:Ljava/lang/String;

    .line 1577
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getTypefaceStyle()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTypefaceStyle:I

    .line 1578
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDuration:I

    .line 1579
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getTextColor()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTextColor:I

    .line 1580
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTextSize:F

    .line 1581
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isIndeterminate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIsIndeterminate:Z

    .line 1582
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getBackground()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mBackground:I

    .line 1583
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isTouchDismissible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIsTouchDismissible:Z

    .line 1585
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1674
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1630
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v0, v3, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1635
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1636
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDivider:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTypefaceStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1645
    :cond_0
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-eqz v0, :cond_1

    .line 1647
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1649
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    :goto_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1659
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1661
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTypefaceStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1665
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIsIndeterminate:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1666
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIsTouchDismissible:Z

    if-eqz v0, :cond_3

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1669
    return-void

    .line 1654
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1665
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1667
    goto :goto_2
.end method
