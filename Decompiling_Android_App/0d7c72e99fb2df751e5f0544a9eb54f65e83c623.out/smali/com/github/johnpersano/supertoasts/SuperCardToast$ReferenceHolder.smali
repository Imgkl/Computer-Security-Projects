.class Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperCardToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceHolder"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;

.field mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field mBackground:I

.field mButtonDivider:I

.field mButtonIcon:I

.field mButtonText:Ljava/lang/String;

.field mButtonTextColor:I

.field mButtonTextSize:F

.field mButtonTypefaceStyle:I

.field mClickListenerTag:Ljava/lang/String;

.field mDismissListenerTag:Ljava/lang/String;

.field mDuration:I

.field mIcon:I

.field mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

.field mIsIndeterminate:Z

.field mIsSwipeDismissible:Z

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

    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2176
    new-instance v1, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder$1;

    invoke-direct {v1, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;)V

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2085
    invoke-static {}, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->values()[Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 2087
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v4, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v1, v4, :cond_0

    .line 2089
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    .line 2090
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextSize:F

    .line 2091
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextColor:I

    .line 2092
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonIcon:I

    .line 2093
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonDivider:I

    .line 2094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTypefaceStyle:I

    .line 2095
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    .line 2096
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    .line 2100
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 2102
    .local v0, "hasIcon":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    .line 2105
    invoke-static {}, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->values()[Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 2109
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    .line 2110
    invoke-static {}, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->values()[Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 2111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mText:Ljava/lang/String;

    .line 2112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTypefaceStyle:I

    .line 2113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mDuration:I

    .line 2114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTextColor:I

    .line 2115
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTextSize:F

    .line 2116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsIndeterminate:Z

    .line 2117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mBackground:I

    .line 2118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsTouchDismissible:Z

    .line 2119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iput-boolean v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsSwipeDismissible:Z

    .line 2121
    return-void

    .end local v0    # "hasIcon":Z
    :cond_2
    move v0, v3

    .line 2100
    goto :goto_0

    .restart local v0    # "hasIcon":Z
    :cond_3
    move v1, v3

    .line 2116
    goto :goto_1

    :cond_4
    move v1, v3

    .line 2118
    goto :goto_2

    :cond_5
    move v2, v3

    .line 2119
    goto :goto_3
.end method

.method public constructor <init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V
    .locals 2
    .param p1, "superCardToast"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 2045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2176
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder$1;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2047
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getType()Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 2049
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v0, v1, :cond_0

    .line 2051
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    .line 2052
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getButtonTextSize()F

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextSize:F

    .line 2053
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getButtonTextColor()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextColor:I

    .line 2054
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getButtonIcon()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonIcon:I

    .line 2055
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getDividerColor()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonDivider:I

    .line 2056
    # invokes: Lcom/github/johnpersano/supertoasts/SuperCardToast;->getOnClickWrapperTag()Ljava/lang/String;
    invoke-static {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$900(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    .line 2057
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getButtonTypefaceStyle()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTypefaceStyle:I

    .line 2058
    # invokes: Lcom/github/johnpersano/supertoasts/SuperCardToast;->getToken()Landroid/os/Parcelable;
    invoke-static {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$1000(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    .line 2062
    :cond_0
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getIconPosition()Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2064
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    .line 2065
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getIconPosition()Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 2069
    :cond_1
    # invokes: Lcom/github/johnpersano/supertoasts/SuperCardToast;->getDismissListenerTag()Ljava/lang/String;
    invoke-static {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$1100(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    .line 2070
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 2071
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mText:Ljava/lang/String;

    .line 2072
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getTypefaceStyle()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTypefaceStyle:I

    .line 2073
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mDuration:I

    .line 2074
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getTextColor()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTextColor:I

    .line 2075
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTextSize:F

    .line 2076
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->isIndeterminate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsIndeterminate:Z

    .line 2077
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getBackgroundResource()I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mBackground:I

    .line 2078
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->isTouchDismissible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsTouchDismissible:Z

    .line 2079
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->isSwipeDismissible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsSwipeDismissible:Z

    .line 2081
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2172
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

    .line 2127
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v0, v3, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2132
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2133
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2135
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonDivider:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTypefaceStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2137
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2138
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2142
    :cond_0
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-eqz v0, :cond_1

    .line 2144
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2146
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    :goto_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2156
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2157
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2158
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTypefaceStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2159
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2161
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2162
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsIndeterminate:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2163
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsTouchDismissible:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2165
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsSwipeDismissible:Z

    if-eqz v0, :cond_4

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2167
    return-void

    .line 2151
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2162
    goto :goto_1

    :cond_3
    move v0, v2

    .line 2164
    goto :goto_2

    :cond_4
    move v1, v2

    .line 2165
    goto :goto_3
.end method
