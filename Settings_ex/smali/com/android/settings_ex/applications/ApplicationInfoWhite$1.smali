.class final Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;
.super Ljava/util/HashMap;
.source "ApplicationInfoWhite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationInfoWhite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 22

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v11, "com.android.providers.media"

    .line 19
    .local v11, "mediaProvidersPkgKey":Ljava/lang/String;
    const/16 v21, 0x9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 20
    .local v12, "mediaProvidersValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v3, "android"

    .line 24
    .local v3, "androidPkgKey":Ljava/lang/String;
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 25
    .local v4, "androidPkgValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v5, "cn.nubia.applockmanager"

    .line 29
    .local v5, "applockPkgKey":Ljava/lang/String;
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 30
    .local v6, "applockPkgValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v9, "com.eyeverify.evservice"

    .line 34
    .local v9, "evserviceKey":Ljava/lang/String;
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 35
    .local v10, "evserviceValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v17, "cn.nubia.security2"

    .line 39
    .local v17, "securityKey":Ljava/lang/String;
    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 40
    .local v18, "securityValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v7, "cn.nubia.deskclock.preset"

    .line 44
    .local v7, "clockKey":Ljava/lang/String;
    const/16 v21, 0x7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 45
    .local v8, "clockValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v19, "cn.nubia.yulorepage"

    .line 49
    .local v19, "yulorepageKey":Ljava/lang/String;
    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 50
    .local v20, "yulorepageValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v15, "cn.nubia.soundrecorder.preset"

    .line 53
    .local v15, "recorderPkgKey":Ljava/lang/String;
    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 54
    .local v16, "recorderValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v14, "cn.nubia.minilauncher"

    .line 57
    .local v14, "miniLauncherPkgKey":Ljava/lang/String;
    const/16 v21, 0xb

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 58
    .local v13, "miniLauncher":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
