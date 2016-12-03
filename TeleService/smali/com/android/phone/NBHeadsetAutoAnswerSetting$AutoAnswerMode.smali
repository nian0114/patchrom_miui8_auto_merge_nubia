.class public final enum Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;
.super Ljava/lang/Enum;
.source "NBHeadsetAutoAnswerSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBHeadsetAutoAnswerSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoAnswerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

.field public static final enum AFTER10SEDS:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

.field public static final enum AFTER5SEDS:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

.field public static final enum IMMEDIATELY:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

.field public static final enum NEVER:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->NEVER:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    new-instance v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    const-string v1, "IMMEDIATELY"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->IMMEDIATELY:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    new-instance v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    const-string v1, "AFTER5SEDS"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->AFTER5SEDS:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    new-instance v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    const-string v1, "AFTER10SEDS"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->AFTER10SEDS:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    sget-object v1, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->NEVER:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->IMMEDIATELY:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->AFTER5SEDS:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->AFTER10SEDS:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->$VALUES:[Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->$VALUES:[Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    invoke-virtual {v0}, [Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    return-object v0
.end method
