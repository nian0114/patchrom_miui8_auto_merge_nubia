.class public final enum Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f0c01ec

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 185
    new-instance v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f0c0ba5

    const v4, 0x7f0c0ba4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .line 189
    new-instance v6, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f0c0ba6

    const v10, 0x7f0c0ba7

    const v11, 0x7f0c01f7

    invoke-direct/range {v6 .. v11}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .line 193
    new-instance v9, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f0c04e1

    const v13, 0x7f0c04e2

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    .line 183
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "hintInNumeric"    # I
    .param p5, "nextButtonText"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 198
    iput p3, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->alphaHint:I

    .line 199
    iput p4, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->numericHint:I

    .line 200
    iput p5, p0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->buttonText:I

    .line 201
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    const-class v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment$Stage;

    return-object v0
.end method
