//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIO open source project
//
// Copyright (c) 2025 Apple Inc. and the SwiftNIO project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIO project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

/// Errors thrown during low-level NTP packet operations.
package struct _NTPError: Error, Sendable, Equatable, Hashable, CustomStringConvertible, CustomDebugStringConvertible {
    package var debugDescription: String {
        String(describing: self.base)
    }

    package var description: String {
        String(describing: self.base)
    }

    @usableFromInline
    enum Base: Equatable, Hashable, Sendable {
        case arithmeticOverflow
    }

    @usableFromInline
    let base: Base

    @inlinable
    init(_ base: Base) { self.base = base }

    /// Arithmetic overflow occurred during offset calculation
    @inlinable
    package static var arithmeticOverflow: Self {
        Self(.arithmeticOverflow)
    }
}
