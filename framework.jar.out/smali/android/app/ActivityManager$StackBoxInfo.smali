.class public Landroid/app/ActivityManager$StackBoxInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackBoxInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public children:[Landroid/app/ActivityManager$StackBoxInfo;

.field public displayMode:I

.field public flags:I

.field public parent:Landroid/app/ActivityManager$StackBoxInfo;

.field public stack:Landroid/app/ActivityManager$StackInfo;

.field public stackBoxId:I

.field public stackId:I

.field public vertical:Z

.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3231
    new-instance v0, Landroid/app/ActivityManager$StackBoxInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackBoxInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$StackBoxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3246
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 3248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3249
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$StackBoxInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3250
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3184
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    .line 3211
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    .line 3212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->vertical:Z

    .line 3213
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    .line 3214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->displayMode:I

    .line 3215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->flags:I

    .line 3216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->parent:Landroid/app/ActivityManager$StackBoxInfo;

    .line 3217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    .line 3218
    iget v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 3219
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/ActivityManager$StackBoxInfo;

    iput-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    .line 3220
    iget-object v3, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    sget-object v0, Landroid/app/ActivityManager$StackBoxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$StackBoxInfo;

    aput-object v0, v3, v2

    .line 3221
    iget-object v3, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    sget-object v0, Landroid/app/ActivityManager$StackBoxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$StackBoxInfo;

    aput-object v0, v3, v1

    .line 3222
    iget-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    aget-object v0, v0, v2

    iput-object p0, v0, Landroid/app/ActivityManager$StackBoxInfo;->parent:Landroid/app/ActivityManager$StackBoxInfo;

    .line 3223
    iget-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    aget-object v0, v0, v1

    iput-object p0, v0, Landroid/app/ActivityManager$StackBoxInfo;->parent:Landroid/app/ActivityManager$StackBoxInfo;

    .line 3229
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 3212
    goto :goto_0

    .line 3225
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3226
    sget-object v0, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$StackInfo;

    iput-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3277
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$StackBoxInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3253
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3254
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Box id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " vertical="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/ActivityManager$StackBoxInfo;->vertical:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    iget-object v1, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-eqz v1, :cond_1

    .line 3258
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "First child=\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3259
    iget-object v1, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager$StackBoxInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Second child=\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    iget-object v1, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager$StackBoxInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    :cond_0
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3269
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ActivityManager$StackBoxInfo;->displayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ActivityManager$StackBoxInfo;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3263
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    if-eqz v1, :cond_0

    .line 3264
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Stack=\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3265
    iget-object v1, p0, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager$StackInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3189
    iget v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3190
    iget v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3191
    iget-boolean v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->vertical:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3192
    iget-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3193
    iget v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->displayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3194
    iget v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3195
    iget v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3196
    iget-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-eqz v0, :cond_1

    .line 3197
    iget-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager$StackBoxInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3198
    iget-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager$StackBoxInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3207
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 3191
    goto :goto_0

    .line 3200
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    if-eqz v0, :cond_2

    .line 3201
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3202
    iget-object v0, p0, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 3204
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
