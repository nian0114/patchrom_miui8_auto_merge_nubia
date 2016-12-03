.class final enum Lcom/android/phone/NBDdsSwitchController$SubMask;
.super Ljava/lang/Enum;
.source "NBDdsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBDdsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SubMask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/NBDdsSwitchController$SubMask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/NBDdsSwitchController$SubMask;

.field public static final enum ALL_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

.field public static final enum CARD1_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

.field public static final enum CARD2_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

.field public static final enum NOT_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/NBDdsSwitchController$SubMask;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/phone/NBDdsSwitchController$SubMask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->NOT_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    new-instance v0, Lcom/android/phone/NBDdsSwitchController$SubMask;

    const-string v1, "CARD1_AVAILABLE"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/phone/NBDdsSwitchController$SubMask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->CARD1_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    new-instance v0, Lcom/android/phone/NBDdsSwitchController$SubMask;

    const-string v1, "CARD2_AVAILABLE"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/phone/NBDdsSwitchController$SubMask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->CARD2_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    new-instance v0, Lcom/android/phone/NBDdsSwitchController$SubMask;

    const-string v1, "ALL_AVAILABLE"

    invoke-direct {v0, v1, v6, v5}, Lcom/android/phone/NBDdsSwitchController$SubMask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->ALL_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/NBDdsSwitchController$SubMask;

    sget-object v1, Lcom/android/phone/NBDdsSwitchController$SubMask;->NOT_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/NBDdsSwitchController$SubMask;->CARD1_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/NBDdsSwitchController$SubMask;->CARD2_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/NBDdsSwitchController$SubMask;->ALL_AVAILABLE:Lcom/android/phone/NBDdsSwitchController$SubMask;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->$VALUES:[Lcom/android/phone/NBDdsSwitchController$SubMask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/phone/NBDdsSwitchController$SubMask;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/NBDdsSwitchController$SubMask;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/phone/NBDdsSwitchController$SubMask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBDdsSwitchController$SubMask;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/NBDdsSwitchController$SubMask;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBDdsSwitchController$SubMask;->$VALUES:[Lcom/android/phone/NBDdsSwitchController$SubMask;

    invoke-virtual {v0}, [Lcom/android/phone/NBDdsSwitchController$SubMask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/NBDdsSwitchController$SubMask;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/phone/NBDdsSwitchController$SubMask;->mValue:I

    return v0
.end method
