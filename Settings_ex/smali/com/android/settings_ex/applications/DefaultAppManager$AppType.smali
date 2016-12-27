.class public final enum Lcom/android/settings_ex/applications/DefaultAppManager$AppType;
.super Ljava/lang/Enum;
.source "DefaultAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/applications/DefaultAppManager$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum browser:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum camera:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum document:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum email:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum gallery:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum music:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum phone:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

.field public static final enum videoPlayer:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "home"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "phone"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->phone:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "message"

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "browser"

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->browser:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "camera"

    invoke-direct {v0, v1, v7}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->camera:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "gallery"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->gallery:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "music"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->music:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "email"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->email:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "videoPlayer"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->videoPlayer:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "document"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->document:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->phone:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->browser:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->camera:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->gallery:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->music:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->email:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->videoPlayer:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->document:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->$VALUES:[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/applications/DefaultAppManager$AppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->$VALUES:[Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    invoke-virtual {v0}, [Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    return-object v0
.end method
