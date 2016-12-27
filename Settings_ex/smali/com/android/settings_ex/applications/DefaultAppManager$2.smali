.class Lcom/android/settings_ex/applications/DefaultAppManager$2;
.super Ljava/util/HashMap;
.source "DefaultAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/DefaultAppManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/DefaultAppManager;)V
    .locals 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppManager$2;->this$0:Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 130
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->home:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "com.android.launcher"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->phone:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.contacts"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->message:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.mms"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->browser:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "com.android.browser"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->camera:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "com.android.camera"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->gallery:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->music:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.music.preset"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->email:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "com.android.email"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->videoPlayer:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "com.android.video"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/settings_ex/applications/DefaultAppManager$AppType;->document:Lcom/android/settings_ex/applications/DefaultAppManager$AppType;

    const-string v1, "cn.nubia.wps_moffice"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method
