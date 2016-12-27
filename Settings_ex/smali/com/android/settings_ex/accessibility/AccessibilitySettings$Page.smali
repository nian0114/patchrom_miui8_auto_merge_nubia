.class final enum Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;
.super Ljava/lang/Enum;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

.field public static final enum Fingerprint:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

.field public static final enum Gravity:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

.field public static final enum Magnetic:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

.field public static final enum Proximity:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    const-string v1, "Gravity"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Gravity:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    const-string v1, "Magnetic"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Magnetic:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    const-string v1, "Proximity"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Proximity:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    const-string v1, "Fingerprint"

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Fingerprint:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    sget-object v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Gravity:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Magnetic:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Proximity:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->Fingerprint:Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->$VALUES:[Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->$VALUES:[Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    invoke-virtual {v0}, [Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/accessibility/AccessibilitySettings$Page;

    return-object v0
.end method
