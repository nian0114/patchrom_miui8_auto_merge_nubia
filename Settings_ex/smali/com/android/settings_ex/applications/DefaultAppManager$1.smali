.class final Lcom/android/settings_ex/applications/DefaultAppManager$1;
.super Ljava/util/HashMap;
.source "DefaultAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/android/settings_ex/applications/DefaultAppManager$AppType;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 116
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.launcher"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->phone:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.contacts"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.mms"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->browser:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.browser"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->camera:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "com.android.camera"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->gallery:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.gallery3d"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->music:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.music.preset"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->email:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.email"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->videoPlayer:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.video"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->document:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.wps_moffice"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method
