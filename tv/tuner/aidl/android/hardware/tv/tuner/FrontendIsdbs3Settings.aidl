/*
 * Copyright 2021 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.tv.tuner;

import android.hardware.tv.tuner.FrontendIsdbs3Coderate;
import android.hardware.tv.tuner.FrontendIsdbs3Modulation;
import android.hardware.tv.tuner.FrontendIsdbs3Rolloff;
import android.hardware.tv.tuner.FrontendIsdbsStreamIdType;

/**
 * Signal Settings for ISDBS3 Frontend.
 * @hide
 */
@VintfStability
parcelable FrontendIsdbs3Settings {
    /**
     * Signal frequency in Hertz
     */
    int frequency;

    /**
     * Signal end frequency in Hertz used by scan
     */
    int endFrequency;

    char streamId;

    FrontendIsdbsStreamIdType streamIdType = FrontendIsdbsStreamIdType.UNDEFINED;

    FrontendIsdbs3Modulation modulation = FrontendIsdbs3Modulation.UNDEFINED;

    FrontendIsdbs3Coderate coderate = FrontendIsdbs3Coderate.UNDEFINED;

    /**
     * Symbols per second
     */
    int symbolRate;

    FrontendIsdbs3Rolloff rolloff = FrontendIsdbs3Rolloff.UNDEFINED;
}
