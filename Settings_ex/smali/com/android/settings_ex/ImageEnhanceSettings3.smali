.class public Lcom/android/settings_ex/ImageEnhanceSettings3;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "ImageEnhanceSettings3.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mHueAdjBtnClickListener:Landroid/view/View$OnClickListener;

.field private mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;

.field private mHueRadioLayout:Landroid/widget/LinearLayout;

.field private mImprove:Landroid/widget/RadioButton;

.field private mNormal:Landroid/widget/RadioButton;

.field private mSaturRadioGroup:Landroid/widget/RadioGroup;

.field private mSeekBarProgress:I

.field private mSeekBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mWeak:Landroid/widget/RadioButton;

.field private mWriteNodeRunable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 183
    new-instance v0, Lcom/android/settings_ex/ImageEnhanceSettings3$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ImageEnhanceSettings3$1;-><init>(Lcom/android/settings_ex/ImageEnhanceSettings3;)V

    iput-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mWriteNodeRunable:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/android/settings_ex/ImageEnhanceSettings3$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ImageEnhanceSettings3$2;-><init>(Lcom/android/settings_ex/ImageEnhanceSettings3;)V

    iput-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 242
    new-instance v0, Lcom/android/settings_ex/ImageEnhanceSettings3$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ImageEnhanceSettings3$3;-><init>(Lcom/android/settings_ex/ImageEnhanceSettings3;)V

    iput-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ImageEnhanceSettings3;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings3;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ImageEnhanceSettings3;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings3;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I

    return p1
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ImageEnhanceSettings3;)Lcom/android/settings_ex/LightSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings3;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ImageEnhanceSettings3;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings3;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mWriteNodeRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ImageEnhanceSettings3;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ImageEnhanceSettings3;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ImageEnhanceSettings3;->persistImageEnhanceHueValue(I)V

    return-void
.end method

.method private getImageEnhanceHueValue()I
    .locals 3

    .prologue
    .line 210
    const-string v1, "persist.sys.lcd.colortmp"

    const-string v2, "127"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "hueValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private onSeekBarChange(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mWriteNodeRunable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 168
    const-string v0, "ImageEnhanceSettings3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekBarChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method private persistImageEnhanceHueValue(I)V
    .locals 2
    .param p1, "hueValue"    # I

    .prologue
    .line 206
    const-string v0, "persist.sys.lcd.colortmp"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private static writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "nodePath"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v3, "ImageEnhanceSettings3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeNodeValue nodePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 198
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 203
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ioEx":Ljava/io/IOException;
    :goto_1
    const-string v3, "ImageEnhanceSettings3"

    const-string v4, "writeNodeValue IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v0    # "ioEx":Ljava/io/IOException;
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1
.end method


# virtual methods
.method public initView()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 87
    const v6, 0x7f1201b3

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ImageEnhanceSettings3;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 88
    .local v3, "parentView":Landroid/widget/LinearLayout;
    const v6, 0x7f1201bd

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mSaturRadioGroup:Landroid/widget/RadioGroup;

    .line 90
    const v6, 0x7f1201bc

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueRadioLayout:Landroid/widget/LinearLayout;

    .line 92
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueRadioLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f1201ad

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/LightSeekBar;

    iput-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;

    .line 94
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueRadioLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/LightSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 96
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;

    const/16 v8, 0xff

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/LightSeekBar;->setMax(I)V

    .line 97
    iget-object v8, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;

    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-virtual {v6}, Lcom/android/settings_ex/LightSeekBar;->isBeginCenter()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Lcom/android/settings_ex/LightSeekBar;->setBeginCenter(Z)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->getImageEnhanceHueValue()I

    move-result v1

    .line 99
    .local v1, "initHueValue":I
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-virtual {v6, v1}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 100
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueRadioLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f1201ae

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, "coolBtn":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueRadioLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f1201af

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, "naturalBtn":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueRadioLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f1201b0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 108
    .local v5, "warnBtn":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mHueAdjBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v6, 0x7f1201b5

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mImprove:Landroid/widget/RadioButton;

    .line 112
    const v6, 0x7f1201b6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mNormal:Landroid/widget/RadioButton;

    .line 113
    const v6, 0x7f1201b7

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mWeak:Landroid/widget/RadioButton;

    .line 114
    const-string v6, "persist.sys.image.enhance"

    const-string v8, "w"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "saturationType":Ljava/lang/String;
    const-string v6, "i"

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mImprove:Landroid/widget/RadioButton;

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 125
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mSaturRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 126
    return-void

    .line 97
    .end local v0    # "coolBtn":Landroid/widget/TextView;
    .end local v1    # "initHueValue":I
    .end local v2    # "naturalBtn":Landroid/widget/TextView;
    .end local v4    # "saturationType":Ljava/lang/String;
    .end local v5    # "warnBtn":Landroid/widget/TextView;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 119
    .restart local v0    # "coolBtn":Landroid/widget/TextView;
    .restart local v1    # "initHueValue":I
    .restart local v2    # "naturalBtn":Landroid/widget/TextView;
    .restart local v4    # "saturationType":Ljava/lang/String;
    .restart local v5    # "warnBtn":Landroid/widget/TextView;
    :cond_2
    const-string v6, "n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 121
    :cond_3
    const-string v6, "w"

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    iget-object v6, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mWeak:Landroid/widget/RadioButton;

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 148
    const v0, 0x7f1201b7

    if-ne p2, v0, :cond_1

    .line 149
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "w"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const v0, 0x7f1201b6

    if-ne p2, v0, :cond_2

    .line 151
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "n"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    const v0, 0x7f1201b5

    if-ne p2, v0, :cond_0

    .line 153
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "i"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x1

    const v2, 0x7f0e0065

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 75
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->initView()V

    .line 84
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 160
    if-eqz p3, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->onSeekBarChange(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 173
    const-string v0, "ImageEnhanceSettings3"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 178
    const-string v0, "ImageEnhanceSettings3"

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings3;->mSeekBarProgress:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ImageEnhanceSettings3;->persistImageEnhanceHueValue(I)V

    .line 180
    return-void
.end method
