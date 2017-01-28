.class public final Landroid/util/PowerMoConfig;
.super Ljava/lang/Object;
.source "PowerMoConfig.java"


# static fields
.field public static FEATURE:Ljava/lang/String;

.field public static WITHOUT_ACTIVITY_CONTROLLER:Z

.field public static WITHOUT_ALL:Z

.field public static WITHOUT_APP_EVENT:Z

.field public static WITHOUT_CAMERA_DETECT:Z

.field public static WITHOUT_FLOATING:Z

.field public static WITHOUT_KEY_FILTER:Z

.field public static WITHOUT_MULTI_WINDOW:Z

.field public static WITHOUT_REMOTE_DISPLAY:Z

.field public static WITHOUT_SHOPM:Z

.field public static WITHOUT_SMART_AUDIO:Z

.field public static WITHOUT_SMART_CONFIGURATION:Z

.field public static WITHOUT_SMART_CONTENT:Z

.field public static WITHOUT_SMART_DISPLAY:Z

.field public static WITHOUT_SMART_INPUT:Z

.field public static WITHOUT_SMART_SENSOR:Z

.field public static WITHOUT_WINDOW_ADJUST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "remote-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_REMOTE_DISPLAY:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_2

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_AUDIO:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_3

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-sensor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_SENSOR:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_4

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_5

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "window-adjust"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_WINDOW_ADJUST:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_6

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "camera-detect"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_CAMERA_DETECT:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_7

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "activity-controller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ACTIVITY_CONTROLLER:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_8

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "app-event"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_8
    move v0, v2

    :goto_8
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_APP_EVENT:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_9

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "key-filter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_9
    move v0, v2

    :goto_9
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_KEY_FILTER:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_a

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-configuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_a
    move v0, v2

    :goto_a
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONFIGURATION:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_b

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_b
    move v0, v2

    :goto_b
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONTENT:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_c

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    if-nez v0, :cond_c

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    if-nez v0, :cond_c

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "shopm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    move v0, v2

    :goto_c
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SHOPM:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_d

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "multi-window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_d
    move v0, v2

    :goto_d
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_WINDOW:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_e

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_WINDOW:Z

    if-nez v0, :cond_e

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "floating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    sput-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_FLOATING:Z

    return-void

    :cond_10
    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_1

    :cond_12
    move v0, v1

    goto/16 :goto_2

    :cond_13
    move v0, v1

    goto/16 :goto_3

    :cond_14
    move v0, v1

    goto/16 :goto_4

    :cond_15
    move v0, v1

    goto/16 :goto_5

    :cond_16
    move v0, v1

    goto/16 :goto_6

    :cond_17
    move v0, v1

    goto/16 :goto_7

    :cond_18
    move v0, v1

    goto/16 :goto_8

    :cond_19
    move v0, v1

    goto/16 :goto_9

    :cond_1a
    move v0, v1

    goto :goto_a

    :cond_1b
    move v0, v1

    goto :goto_b

    :cond_1c
    move v0, v1

    goto :goto_c

    :cond_1d
    move v0, v1

    goto :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadConfig()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "persist.powermo.disfeature"

    const-string v3, "all"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "multi-window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_WINDOW:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "activity-controller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ACTIVITY_CONTROLLER:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_2

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_3

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_AUDIO:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_4

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-sensor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_SENSOR:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_5

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_6

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "window-adjust"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_WINDOW_ADJUST:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_7

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "camera-detect"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_CAMERA_DETECT:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_8

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "app-event"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_8
    move v0, v2

    :goto_8
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_APP_EVENT:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_9

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "key-filter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_9
    move v0, v2

    :goto_9
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_KEY_FILTER:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_a

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-configuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_a
    move v0, v2

    :goto_a
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONFIGURATION:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    if-nez v0, :cond_b

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "shopm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_b
    move v0, v2

    :goto_b
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SHOPM:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_c

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_WINDOW:Z

    if-nez v0, :cond_c

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "floating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    move v0, v2

    :goto_c
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_FLOATING:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_d

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "remote-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_d
    move v0, v2

    :goto_d
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_REMOTE_DISPLAY:Z

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_e

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "smart-content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    sput-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONTENT:Z

    return-void

    :cond_10
    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_1

    :cond_12
    move v0, v1

    goto/16 :goto_2

    :cond_13
    move v0, v1

    goto/16 :goto_3

    :cond_14
    move v0, v1

    goto/16 :goto_4

    :cond_15
    move v0, v1

    goto/16 :goto_5

    :cond_16
    move v0, v1

    goto/16 :goto_6

    :cond_17
    move v0, v1

    goto/16 :goto_7

    :cond_18
    move v0, v1

    goto/16 :goto_8

    :cond_19
    move v0, v1

    goto/16 :goto_9

    :cond_1a
    move v0, v1

    goto :goto_a

    :cond_1b
    move v0, v1

    goto :goto_b

    :cond_1c
    move v0, v1

    goto :goto_c

    :cond_1d
    move v0, v1

    goto :goto_d
.end method
